//
//  File.swift
//  
//
//  Created by Justin Means on 5/28/21.
//

import Foundation

public struct TickerComposite: Codable {
	
	public struct Micro: Codable, Hashable {
		public var quote: IEXQuote?
		public var company: IEXCompany?
		public var news: IEXNewsResponse?
		public var stats: IEXStats?
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
