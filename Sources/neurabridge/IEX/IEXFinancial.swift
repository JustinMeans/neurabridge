// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let iEXFinancials = try? newJSONDecoder().decode(IEXFinancials.self, from: jsonData)

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

import Foundation

// MARK: - IEXFinancials
public struct IEXFinancials: Codable, Hashable {
	public var symbol: String?
	public var financials: [IEXFinancial]?
	
	enum CodingKeys: String, CodingKey {
		case symbol = "symbol"
		case financials = "financials"
	}
	
	public init(symbol: String?, financials: [IEXFinancial]?) {
		self.symbol = symbol
		self.financials = financials
	}
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - IEXFinancial
public struct IEXFinancial: Codable, Hashable {
	public var ebitda: Decimal?
	public var accountsPayable: Decimal?
	public var capitalSurplus: JSONNull?
	public var cashChange: Decimal?
	public var cashFlow: Decimal?
	public var cashFlowFinancing: Decimal?
	public var changesInInventories: Decimal?
	public var changesInReceivables: Decimal?
	public var commonStock: Decimal?
	public var costOfRevenue: Decimal?
	public var currency: String?
	public var currentAssets: Decimal?
	public var currentCash: Decimal?
	public var currentDebt: Decimal?
	public var currentLongTermDebt: Decimal?
	public var depreciation: Decimal?
	public var dividendsPaid: JSONNull?
	public var ebit: Decimal?
	public var exchangeRateEffect: JSONNull?
	public var filingType: String?
	public var fiscalDate: String?
	public var fiscalQuarter: Decimal?
	public var fiscalYear: Decimal?
	public var goodwill: Decimal?
	public var grossProfit: Decimal?
	public var incomeTax: Decimal?
	public var intangibleAssets: Decimal?
	public var interestIncome: Decimal?
	public var inventory: Decimal?
	public var investingActivityOther: JSONNull?
	public var investments: JSONNull?
	public var longTermDebt: Decimal?
	public var longTermInvestments: Decimal?
	public var minorityInterest: Decimal?
	public var netBorrowings: Decimal?
	public var netIncome: Decimal?
	public var netIncomeBasic: Decimal?
	public var netTangibleAssets: Decimal?
	public var operatingExpense: Decimal?
	public var operatingIncome: Decimal?
	public var operatingRevenue: Decimal?
	public var otherAssets: Decimal?
	public var otherCurrentAssets: Decimal?
	public var otherCurrentLiabilities: Decimal?
	public var otherIncomeExpenseNet: Decimal?
	public var otherLiabilities: Decimal?
	public var pretaxIncome: Decimal?
	public var propertyPlantEquipment: Decimal?
	public var receivables: Decimal?
	public var reportDate: String?
	public var researchAndDevelopment: Decimal?
	public var retainedEarnings: Decimal?
	public var revenue: Decimal?
	public var sellingGeneralAndAdmin: Decimal?
	public var shareholderEquity: Decimal?
	public var shortTermDebt: Decimal?
	public var shortTermInvestments: Decimal?
	public var symbol: String?
	public var totalAssets: Decimal?
	public var totalCash: Decimal?
	public var totalDebt: Decimal?
	public var totalInvestingCashFlows: Decimal?
	public var totalLiabilities: Decimal?
	public var totalRevenue: Decimal?
	public var treasuryStock: Decimal?
	public var id: String?
	public var key: String?
	public var subkey: String?
	public var date: Date?
	public var updated: Date?
	
	enum CodingKeys: String, CodingKey {
		case ebitda = "EBITDA"
		case accountsPayable = "accountsPayable"
		case capitalSurplus = "capitalSurplus"
		case cashChange = "cashChange"
		case cashFlow = "cashFlow"
		case cashFlowFinancing = "cashFlowFinancing"
		case changesInInventories = "changesInInventories"
		case changesInReceivables = "changesInReceivables"
		case commonStock = "commonStock"
		case costOfRevenue = "costOfRevenue"
		case currency = "currency"
		case currentAssets = "currentAssets"
		case currentCash = "currentCash"
		case currentDebt = "currentDebt"
		case currentLongTermDebt = "currentLongTermDebt"
		case depreciation = "depreciation"
		case dividendsPaid = "dividendsPaid"
		case ebit = "ebit"
		case exchangeRateEffect = "exchangeRateEffect"
		case filingType = "filingType"
		case fiscalDate = "fiscalDate"
		case fiscalQuarter = "fiscalQuarter"
		case fiscalYear = "fiscalYear"
		case goodwill = "goodwill"
		case grossProfit = "grossProfit"
		case incomeTax = "incomeTax"
		case intangibleAssets = "intangibleAssets"
		case interestIncome = "interestIncome"
		case inventory = "inventory"
		case investingActivityOther = "investingActivityOther"
		case investments = "investments"
		case longTermDebt = "longTermDebt"
		case longTermInvestments = "longTermInvestments"
		case minorityInterest = "minorityInterest"
		case netBorrowings = "netBorrowings"
		case netIncome = "netIncome"
		case netIncomeBasic = "netIncomeBasic"
		case netTangibleAssets = "netTangibleAssets"
		case operatingExpense = "operatingExpense"
		case operatingIncome = "operatingIncome"
		case operatingRevenue = "operatingRevenue"
		case otherAssets = "otherAssets"
		case otherCurrentAssets = "otherCurrentAssets"
		case otherCurrentLiabilities = "otherCurrentLiabilities"
		case otherIncomeExpenseNet = "otherIncomeExpenseNet"
		case otherLiabilities = "otherLiabilities"
		case pretaxIncome = "pretaxIncome"
		case propertyPlantEquipment = "propertyPlantEquipment"
		case receivables = "receivables"
		case reportDate = "reportDate"
		case researchAndDevelopment = "researchAndDevelopment"
		case retainedEarnings = "retainedEarnings"
		case revenue = "revenue"
		case sellingGeneralAndAdmin = "sellingGeneralAndAdmin"
		case shareholderEquity = "shareholderEquity"
		case shortTermDebt = "shortTermDebt"
		case shortTermInvestments = "shortTermInvestments"
		case symbol = "symbol"
		case totalAssets = "totalAssets"
		case totalCash = "totalCash"
		case totalDebt = "totalDebt"
		case totalInvestingCashFlows = "totalInvestingCashFlows"
		case totalLiabilities = "totalLiabilities"
		case totalRevenue = "totalRevenue"
		case treasuryStock = "treasuryStock"
		case id = "id"
		case key = "key"
		case subkey = "subkey"
		case date = "date"
		case updated = "updated"
	}
	
	public init(ebitda: Decimal?, accountsPayable: Decimal?, capitalSurplus: JSONNull?, cashChange: Decimal?, cashFlow: Decimal?, cashFlowFinancing: Decimal?, changesInInventories: Decimal?, changesInReceivables: Decimal?, commonStock: Decimal?, costOfRevenue: Decimal?, currency: String?, currentAssets: Decimal?, currentCash: Decimal?, currentDebt: Decimal?, currentLongTermDebt: Decimal?, depreciation: Decimal?, dividendsPaid: JSONNull?, ebit: Decimal?, exchangeRateEffect: JSONNull?, filingType: String?, fiscalDate: String?, fiscalQuarter: Decimal?, fiscalYear: Decimal?, goodwill: Decimal?, grossProfit: Decimal?, incomeTax: Decimal?, intangibleAssets: Decimal?, interestIncome: Decimal?, inventory: Decimal?, investingActivityOther: JSONNull?, investments: JSONNull?, longTermDebt: Decimal?, longTermInvestments: Decimal?, minorityInterest: Decimal?, netBorrowings: Decimal?, netIncome: Decimal?, netIncomeBasic: Decimal?, netTangibleAssets: Decimal?, operatingExpense: Decimal?, operatingIncome: Decimal?, operatingRevenue: Decimal?, otherAssets: Decimal?, otherCurrentAssets: Decimal?, otherCurrentLiabilities: Decimal?, otherIncomeExpenseNet: Decimal?, otherLiabilities: Decimal?, pretaxIncome: Decimal?, propertyPlantEquipment: Decimal?, receivables: Decimal?, reportDate: String?, researchAndDevelopment: Decimal?, retainedEarnings: Decimal?, revenue: Decimal?, sellingGeneralAndAdmin: Decimal?, shareholderEquity: Decimal?, shortTermDebt: Decimal?, shortTermInvestments: Decimal?, symbol: String?, totalAssets: Decimal?, totalCash: Decimal?, totalDebt: Decimal?, totalInvestingCashFlows: Decimal?, totalLiabilities: Decimal?, totalRevenue: Decimal?, treasuryStock: Decimal?, id: String?, key: String?, subkey: String?, date: Date?, updated: Date?) {
		self.ebitda = ebitda
		self.accountsPayable = accountsPayable
		self.capitalSurplus = capitalSurplus
		self.cashChange = cashChange
		self.cashFlow = cashFlow
		self.cashFlowFinancing = cashFlowFinancing
		self.changesInInventories = changesInInventories
		self.changesInReceivables = changesInReceivables
		self.commonStock = commonStock
		self.costOfRevenue = costOfRevenue
		self.currency = currency
		self.currentAssets = currentAssets
		self.currentCash = currentCash
		self.currentDebt = currentDebt
		self.currentLongTermDebt = currentLongTermDebt
		self.depreciation = depreciation
		self.dividendsPaid = dividendsPaid
		self.ebit = ebit
		self.exchangeRateEffect = exchangeRateEffect
		self.filingType = filingType
		self.fiscalDate = fiscalDate
		self.fiscalQuarter = fiscalQuarter
		self.fiscalYear = fiscalYear
		self.goodwill = goodwill
		self.grossProfit = grossProfit
		self.incomeTax = incomeTax
		self.intangibleAssets = intangibleAssets
		self.interestIncome = interestIncome
		self.inventory = inventory
		self.investingActivityOther = investingActivityOther
		self.investments = investments
		self.longTermDebt = longTermDebt
		self.longTermInvestments = longTermInvestments
		self.minorityInterest = minorityInterest
		self.netBorrowings = netBorrowings
		self.netIncome = netIncome
		self.netIncomeBasic = netIncomeBasic
		self.netTangibleAssets = netTangibleAssets
		self.operatingExpense = operatingExpense
		self.operatingIncome = operatingIncome
		self.operatingRevenue = operatingRevenue
		self.otherAssets = otherAssets
		self.otherCurrentAssets = otherCurrentAssets
		self.otherCurrentLiabilities = otherCurrentLiabilities
		self.otherIncomeExpenseNet = otherIncomeExpenseNet
		self.otherLiabilities = otherLiabilities
		self.pretaxIncome = pretaxIncome
		self.propertyPlantEquipment = propertyPlantEquipment
		self.receivables = receivables
		self.reportDate = reportDate
		self.researchAndDevelopment = researchAndDevelopment
		self.retainedEarnings = retainedEarnings
		self.revenue = revenue
		self.sellingGeneralAndAdmin = sellingGeneralAndAdmin
		self.shareholderEquity = shareholderEquity
		self.shortTermDebt = shortTermDebt
		self.shortTermInvestments = shortTermInvestments
		self.symbol = symbol
		self.totalAssets = totalAssets
		self.totalCash = totalCash
		self.totalDebt = totalDebt
		self.totalInvestingCashFlows = totalInvestingCashFlows
		self.totalLiabilities = totalLiabilities
		self.totalRevenue = totalRevenue
		self.treasuryStock = treasuryStock
		self.id = id
		self.key = key
		self.subkey = subkey
		self.date = date
		self.updated = updated
	}
}

