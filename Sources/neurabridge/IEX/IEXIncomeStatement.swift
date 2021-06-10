// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let iEXIncomeStatement = try? newJSONDecoder().decode(IEXIncomeStatement.self, from: jsonData)

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

import Foundation

// MARK: - IEXIncomeStatement
public struct IEXIncomeStatement: Codable, Hashable {
	public var symbol: String?
	public var income: [IEXIncome]?
	
	enum CodingKeys: String, CodingKey {
		case symbol = "symbol"
		case income = "income"
	}
	
	public init(symbol: String?, income: [IEXIncome]?) {
		self.symbol = symbol
		self.income = income
	}
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - IEXIncome
public struct IEXIncome: Codable, Hashable {
	public var costOfRevenue: Decimal?
	public var currency: String?
	public var ebit: Decimal?
	public var filingType: String?
	public var fiscalDate: String?
	public var fiscalQuarter: Decimal?
	public var fiscalYear: Decimal?
	public var grossProfit: Decimal?
	public var incomeTax: Decimal?
	public var interestIncome: Decimal?
	public var minorityInterest: Decimal?
	public var netIncome: Decimal?
	public var netIncomeBasic: Decimal?
	public var operatingExpense: Decimal?
	public var operatingIncome: Decimal?
	public var otherIncomeExpenseNet: Decimal?
	public var pretaxIncome: Decimal?
	public var reportDate: String?
	public var researchAndDevelopment: Decimal?
	public var sellingGeneralAndAdmin: Decimal?
	public var symbol: String?
	public var totalRevenue: Decimal?
	public var id: String?
	public var key: String?
	public var subkey: String?
	public var date: Date?
	public var updated: Date?
	
	enum CodingKeys: String, CodingKey {
		case costOfRevenue = "costOfRevenue"
		case currency = "currency"
		case ebit = "ebit"
		case filingType = "filingType"
		case fiscalDate = "fiscalDate"
		case fiscalQuarter = "fiscalQuarter"
		case fiscalYear = "fiscalYear"
		case grossProfit = "grossProfit"
		case incomeTax = "incomeTax"
		case interestIncome = "interestIncome"
		case minorityInterest = "minorityInterest"
		case netIncome = "netIncome"
		case netIncomeBasic = "netIncomeBasic"
		case operatingExpense = "operatingExpense"
		case operatingIncome = "operatingIncome"
		case otherIncomeExpenseNet = "otherIncomeExpenseNet"
		case pretaxIncome = "pretaxIncome"
		case reportDate = "reportDate"
		case researchAndDevelopment = "researchAndDevelopment"
		case sellingGeneralAndAdmin = "sellingGeneralAndAdmin"
		case symbol = "symbol"
		case totalRevenue = "totalRevenue"
		case id = "id"
		case key = "key"
		case subkey = "subkey"
		case date = "date"
		case updated = "updated"
	}
	
	public init(costOfRevenue: Decimal?, currency: String?, ebit: Decimal?, filingType: String?, fiscalDate: String?, fiscalQuarter: Decimal?, fiscalYear: Decimal?, grossProfit: Decimal?, incomeTax: Decimal?, interestIncome: Decimal?, minorityInterest: Decimal?, netIncome: Decimal?, netIncomeBasic: Decimal?, operatingExpense: Decimal?, operatingIncome: Decimal?, otherIncomeExpenseNet: Decimal?, pretaxIncome: Decimal?, reportDate: String?, researchAndDevelopment: Decimal?, sellingGeneralAndAdmin: Decimal?, symbol: String?, totalRevenue: Decimal?, id: String?, key: String?, subkey: String?, date: Date?, updated: Date?) {
		self.costOfRevenue = costOfRevenue
		self.currency = currency
		self.ebit = ebit
		self.filingType = filingType
		self.fiscalDate = fiscalDate
		self.fiscalQuarter = fiscalQuarter
		self.fiscalYear = fiscalYear
		self.grossProfit = grossProfit
		self.incomeTax = incomeTax
		self.interestIncome = interestIncome
		self.minorityInterest = minorityInterest
		self.netIncome = netIncome
		self.netIncomeBasic = netIncomeBasic
		self.operatingExpense = operatingExpense
		self.operatingIncome = operatingIncome
		self.otherIncomeExpenseNet = otherIncomeExpenseNet
		self.pretaxIncome = pretaxIncome
		self.reportDate = reportDate
		self.researchAndDevelopment = researchAndDevelopment
		self.sellingGeneralAndAdmin = sellingGeneralAndAdmin
		self.symbol = symbol
		self.totalRevenue = totalRevenue
		self.id = id
		self.key = key
		self.subkey = subkey
		self.date = date
		self.updated = updated
	}
}
