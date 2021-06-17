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
			[
				[
					Speech.Item.conversational("""
					\((company?.companyName).unwrapped) is \(((quote?.changePercent).unwrapped * 100) < 0 ? "down" : "up") \(((quote?.changePercent).unwrapped * 100))% for the day, trading at \((quote?.latestPrice).unwrapped.dollar) dollars.
					Here are the latest headlines.
					"""),
					Speech.Item.news("""
						\(news?.first.map({ item in
							"\(item.source) says: \(item.headline). \(item.summary)"
						}) ?? "")
						\(news?.prefix(3).map({ item in
							"\(item.headline), according to \(item.source)"
						}).joined(separator: ". ") ?? "")
						""")
				],
			]
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
	public var format: String {
		return self?.format ?? ""
	}
	
	public var unwrapped: Double {
		return self ?? 0
	}
}

public extension Decimal {
	public var double: Double {
		return NSDecimalNumber(decimal:self).doubleValue
	}
}

public extension Double {
	public var shortenedDescription: String {
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
	public var format: String {
		return Decimal(self).description
		//		String(format: "%.2f", self)
	}
	
	public var dollar: String {
		return String(format: "%.2f", self)
	}
	
	//	public var priceFormat: String {
	//
	//	}
}
