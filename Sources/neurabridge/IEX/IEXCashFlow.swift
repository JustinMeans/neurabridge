// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let iEXCashFlows = try? newJSONDecoder().decode(IEXCashFlows.self, from: jsonData)

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

import Foundation

// MARK: - IEXCashFlows
public struct IEXCashFlows: Codable, Hashable {
	public var symbol: String?
	public var cashflow: [IEXCashflow]?
	
	enum CodingKeys: String, CodingKey {
		case symbol = "symbol"
		case cashflow = "cashflow"
	}
	
	public init(symbol: String?, cashflow: [IEXCashflow]?) {
		self.symbol = symbol
		self.cashflow = cashflow
	}
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - IEXCashflow
public struct IEXCashflow: Codable, Hashable {
	public var capitalExpenditures: Int?
	public var cashChange: Int?
	public var cashFlow: Int?
	public var cashFlowFinancing: Int?
	public var changesInInventories: Int?
	public var changesInReceivables: Int?
	public var currency: String?
	public var depreciation: Int?
	public var dividendsPaid: JSONNull?
	public var exchangeRateEffect: JSONNull?
	public var filingType: String?
	public var fiscalDate: String?
	public var fiscalQuarter: Int?
	public var fiscalYear: Int?
	public var investingActivityOther: JSONNull?
	public var investments: JSONNull?
	public var netBorrowings: Int?
	public var netIncome: Int?
	public var otherFinancingCashFlows: JSONNull?
	public var reportDate: String?
	public var symbol: String?
	public var totalInvestingCashFlows: Int?
	public var id: String?
	public var key: String?
	public var subkey: String?
	public var date: Date?
	public var updated: Date?
	
	enum CodingKeys: String, CodingKey {
		case capitalExpenditures = "capitalExpenditures"
		case cashChange = "cashChange"
		case cashFlow = "cashFlow"
		case cashFlowFinancing = "cashFlowFinancing"
		case changesInInventories = "changesInInventories"
		case changesInReceivables = "changesInReceivables"
		case currency = "currency"
		case depreciation = "depreciation"
		case dividendsPaid = "dividendsPaid"
		case exchangeRateEffect = "exchangeRateEffect"
		case filingType = "filingType"
		case fiscalDate = "fiscalDate"
		case fiscalQuarter = "fiscalQuarter"
		case fiscalYear = "fiscalYear"
		case investingActivityOther = "investingActivityOther"
		case investments = "investments"
		case netBorrowings = "netBorrowings"
		case netIncome = "netIncome"
		case otherFinancingCashFlows = "otherFinancingCashFlows"
		case reportDate = "reportDate"
		case symbol = "symbol"
		case totalInvestingCashFlows = "totalInvestingCashFlows"
		case id = "id"
		case key = "key"
		case subkey = "subkey"
		case date = "date"
		case updated = "updated"
	}
	
	public init(capitalExpenditures: Int?, cashChange: Int?, cashFlow: Int?, cashFlowFinancing: Int?, changesInInventories: Int?, changesInReceivables: Int?, currency: String?, depreciation: Int?, dividendsPaid: JSONNull?, exchangeRateEffect: JSONNull?, filingType: String?, fiscalDate: String?, fiscalQuarter: Int?, fiscalYear: Int?, investingActivityOther: JSONNull?, investments: JSONNull?, netBorrowings: Int?, netIncome: Int?, otherFinancingCashFlows: JSONNull?, reportDate: String?, symbol: String?, totalInvestingCashFlows: Int?, id: String?, key: String?, subkey: String?, date: Date?, updated: Date?) {
		self.capitalExpenditures = capitalExpenditures
		self.cashChange = cashChange
		self.cashFlow = cashFlow
		self.cashFlowFinancing = cashFlowFinancing
		self.changesInInventories = changesInInventories
		self.changesInReceivables = changesInReceivables
		self.currency = currency
		self.depreciation = depreciation
		self.dividendsPaid = dividendsPaid
		self.exchangeRateEffect = exchangeRateEffect
		self.filingType = filingType
		self.fiscalDate = fiscalDate
		self.fiscalQuarter = fiscalQuarter
		self.fiscalYear = fiscalYear
		self.investingActivityOther = investingActivityOther
		self.investments = investments
		self.netBorrowings = netBorrowings
		self.netIncome = netIncome
		self.otherFinancingCashFlows = otherFinancingCashFlows
		self.reportDate = reportDate
		self.symbol = symbol
		self.totalInvestingCashFlows = totalInvestingCashFlows
		self.id = id
		self.key = key
		self.subkey = subkey
		self.date = date
		self.updated = updated
	}
}

