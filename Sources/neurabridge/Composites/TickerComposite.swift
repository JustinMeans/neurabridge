//
//  File.swift
//  
//
//  Created by Justin Means on 5/28/21.
//

import Foundation

public struct TickerComposite: Codable {
	
	public struct Micro: Codable, Hashable, Briefable, Speakable {
		public var speechResponse: [String]?
		
		public var speechVariations: [Speech.Items] {
			var companyName: String {
				(company?.companyName).unwrapped.replacingOccurrences(of: "Incorporated", with: "").replacingOccurrences(of: "Inc.", with: "").replacingOccurrences(of: "Inc", with: "").replacingOccurrences(of: "Corp", with: "").replacingOccurrences(of: "Class A", with: "")
			}
			var introVariations: [Speech.Item] {
				var suffixVariations: [String] {
					[
						"for the day,",
						"Today,",
						"On the daily,",
						",",
					]
				}
				var pricePrefixVarations: [String] {
					[
					"It's current price is",
						"It stands at",
						"trading at",
						"Priced at",
						"It's current price is",
						"It trades at",
						"With a single share costing",
						"Going for a share price of",
						"With a share price of",
					]
				}
				return [
					Speech.Item.conversational("""
					\(companyName) is \(((quote?.changePercent).unwrapped * 100) < 0 ? "down" : "up") \(String(format: "%.1f", ((quote?.changePercent).unwrapped * 100)))% \(suffixVariations.randomElement()!) \(pricePrefixVarations.randomElement()!) $\(String(format: "%.2f", ((quote?.latestPrice).unwrapped))).
					"""),
				]
			}
			var filteredNews: [IEXNews] {
				func filter(_ newsItem: IEXNews) -> Bool {
					var good: Bool = true
					for item in TickerComposite.newsBlacklist {
						if newsItem.source.lowercased().contains(item.lowercased()) {
							good = false
							break
						}
					}
					return good
					if newsItem.headline.contains("?") {
						good = false
					}
				}
				let dateThreshold = Date(timeIntervalSinceNow: -4 * 60 * 60 * 24)
				return news?.filter({ filter($0) && $0.lang == "en" && $0.datetime > dateThreshold }) ?? []
			}
			var bridgeVariations: [Speech.Item] {
				if filteredNews.isEmpty {
					return []
				} else {
					return [
						Speech.Item.conversational("Here are the latest headlines."),
						Speech.Item.conversational("Here's the latest."),
						Speech.Item.conversational("Here's what's going on."),
						Speech.Item.conversational("Here's what's making headlines."),
						Speech.Item.conversational("Here's what's in the news."),
						Speech.Item.conversational("Here's what's happening."),
						Speech.Item.conversational("Here's the news."),
						Speech.Item.conversational("This is the latest."),
						Speech.Item.conversational("This is what's going on."),
						Speech.Item.conversational("This is what's making headlines."),
						Speech.Item.conversational("This is what's in the news."),
						Speech.Item.conversational("This is what's happening."),
						Speech.Item.conversational("I'll share the latest."),
						Speech.Item.conversational("I'll share what's going on."),
						Speech.Item.conversational("I'll share what's making headlines."),
						Speech.Item.conversational("I'll share what's in the news."),
						Speech.Item.conversational("I'll share what's happening."),
						Speech.Item.conversational("Let's see the latest."),
						Speech.Item.conversational("Let's see what's going on."),
						Speech.Item.conversational("Let's see what's making headlines."),
						Speech.Item.conversational("Let's see what's in the news."),
						Speech.Item.conversational("Let's see what's happening."),
						Speech.Item.conversational("")
					]
				}
			}
			var newsVariations: [Speech.Item] {
				let selection = filteredNews.prefix(3)
				return [
					Speech.Item.news("""
						\(selection.first.map({ item in
							"\(item.source) says: \(item.headline)."
						}) ?? "")
						\(selection.suffix(2).map({ item in
							"\(item.headline), according to \(item.source)"
						}).joined(separator: ". "))
						"""),
					Speech.Item.news("""
						\(selection.first.map({ item in
							"From \(item.source): \(item.headline)."
						}) ?? "")
						\(selection.suffix(2).map({ item in
							"\(item.source) says: \(item.headline)."
						}).joined(separator: ". "))
						""")
				]
			}
			if filteredNews.isEmpty {
				return [
					[
						introVariations.randomElement()!,
					]
				]
			} else {
				return [
					[
						introVariations.randomElement()!,
						bridgeVariations.randomElement()!,
						newsVariations.randomElement()!
					]
				]
			}
		}
		
		public var briefItem: BriefItem {
			BriefItem(briefMode: .tickerComposite(self), speechItems: speechVariations.randomElement()!)
		}
		
		public var quote: IEXQuote?
		public var company: IEXCompany?
		public var news: IEXNewsResponse?
		public var stats: IEXStats?
//		public var bars: ALPBars?
	}
	
	public struct Global: Codable, Hashable {
		public var quote: IEXQuote?
		public var company: IEXCompany?
		public var dividends: IEXDividends?
		public var financials: IEXFinancials?
		public var income: IEXIncomeStatement?
		public var news: IEXNewsResponse?
		public var peers: IEXPeers?
		public var splits: IEXSplits?
		public var stats: IEXStats?
		public var users: [User.Micro]?
		public var favorite: Bool?
		
		var filteredNews: [IEXNews] {
			func filter(_ newsItem: IEXNews) -> Bool {
				var good: Bool = true
				for item in TickerComposite.newsBlacklist {
					if newsItem.source.lowercased().contains(item.lowercased()) {
						good = false
						break
					}
				}
				return good
				if newsItem.headline.contains("?") {
					good = false
				}
			}
			let dateThreshold = Date(timeIntervalSinceNow: -4 * 60 * 60 * 24)
			return news?.filter({ filter($0) && $0.lang == "en" && $0.datetime > dateThreshold }) ?? []
		}
	}
	
	static var newsBlacklist: [String] {
		[
			"Business Insider",
			"GuruFocus",
			"Benzinga",
			"CityNews",
			"Manila",
			"Lagos",
			"Jumbo News",
			"Nigeria",
			"IPN News Agency"
		]
	}
	
//	public struct Global: Codable, Hashable {
//		public init(micro: TickerComposite.Micro, dividends: IEXDividends? = nil, financials: IEXFinancials? = nil, fundOwnership: IEXFundOwnerships? = nil, incomeStatement: IEXIncomeStatement? = nil, insiderSummaries: IEXInsiderSummaries? = nil, institutionalOwnership: IEXInstitutionalOwnerships? = nil, balanceSheet: IEXBalanceSheets? = nil, cashFlow: IEXCashFlows? = nil, peerGroup: IEXPeers? = nil, splits: IEXSplits? = nil, ceoCompensation: IEXCeoCompensation? = nil, news: IEXNewsResponse? = nil) {
//			self.micro = micro
//			self.dividends = dividends
//			self.financials = financials
//			self.fundOwnership = fundOwnership
//			self.incomeStatement = incomeStatement
//			self.insiderSummaries = insiderSummaries
//			self.institutionalOwnership = institutionalOwnership
//			self.balanceSheet = balanceSheet
//			self.cashFlow = cashFlow
//			self.peerGroup = peerGroup
//			self.splits = splits
//			self.ceoCompensation = ceoCompensation
//			self.news = news
//		}
//
//		public var micro: Micro
//		/// 10
//		public var dividends: IEXDividends?
//		/// 5000
//		public var financials: IEXFinancials?
//		/// 10000
//		public var fundOwnership: IEXFundOwnerships?
//		/// 1000
//		public var incomeStatement: IEXIncomeStatement?
//		/// 5000
//		public var insiderSummaries: IEXInsiderSummaries?
//		/// 10000
//		public var institutionalOwnership: IEXInstitutionalOwnerships?
//		/// 3000
//		public var balanceSheet: IEXBalanceSheets?
//		/// 1000
//		public var cashFlow: IEXCashFlows?
//		/// 500
//		public var peerGroup: IEXPeers?
//		/// 10
//		public var splits: IEXSplits?
//		/// 20
//		public var ceoCompensation: IEXCeoCompensation?
//		/// 1 / item
//		public var news: IEXNewsResponse?
//	}
}

extension Optional where Wrapped == String {
	var unwrapped: String {
		return self ?? ""
	}
}

public extension Optional where Wrapped == Double {
	var format: String {
		return self?.format ?? ""
	}
	
	var unwrapped: Double {
		return self ?? 0
	}
}

public extension Decimal {
	var double: Double {
		return NSDecimalNumber(decimal:self).doubleValue
	}
}

public extension Double {
	var shortenedDescription: String {
		let thousandNum = self/1000
		let millionNum = self/1000000
		let billionNum = self/1000000000
		let trillionNum = self/1000000000000
		
		if self >= 1000 && self < 1000000 {
			if(floor(thousandNum) == thousandNum){
				return("\(Int(thousandNum))k")
			}
			return("\(thousandNum.roundToPlaces(1))k")
		}
		if self > 1000000 && self < 1000000 {
			if(floor(millionNum) == millionNum){
				return("\(Int(thousandNum))k")
			}
			return ("\(millionNum.roundToPlaces(1))M")
		}
		if self > 1000000000 && self < 1000000000000 {
			if(floor(billionNum) == billionNum){
				return("\(Int(millionNum))M")
			}
			return ("\(billionNum.roundToPlaces(1))B")
		}
		if self > 1000000000000 {
			if(floor(trillionNum) == trillionNum){
				return("\(Int(billionNum))B")
			}
			return ("\(trillionNum.roundToPlaces(2))T")
		}
		else{
			if(floor(self) == self){
				return ("\(Int(self))")
			}
			return ("\(self)")
		}
		
	}
	
	func roundToPlaces(_ places:Int) -> Double {
		let divisor = pow(10.0, Double(places))
		return (self * divisor).rounded() / divisor
	}
}

public extension Double {
	var format: String {
		return Decimal(self).description
		//		String(format: "%.2f", self)
	}
	
	var dollar: String {
		return String(format: "%.2f", self)
	}
	
	//	public var priceFormat: String {
	//
	//	}
}
