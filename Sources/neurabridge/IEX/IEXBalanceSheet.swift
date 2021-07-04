// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let iEXBalanceSheets = try? newJSONDecoder().decode(IEXBalanceSheets.self, from: jsonData)

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

import Foundation

// MARK: - IEXBalanceSheets
public struct IEXBalanceSheets: Codable, Hashable {
	public var symbol: String?
	public var balancesheet: [IEXBalancesheet]?
	
	enum CodingKeys: String, CodingKey {
		case symbol = "symbol"
		case balancesheet = "balancesheet"
	}
	
	public init(symbol: String?, balancesheet: [IEXBalancesheet]?) {
		self.symbol = symbol
		self.balancesheet = balancesheet
	}
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - IEXBalancesheet
public struct IEXBalancesheet: Codable, Hashable {
	public var accountsPayable: Int?
	public var capitalSurplus: JSONNull?
	public var commonStock: Int?
	public var currency: String?
	public var currentAssets: Int?
	public var currentCash: Int?
	public var currentLongTermDebt: Int?
	public var filingType: String?
	public var fiscalDate: String?
	public var fiscalQuarter: Int?
	public var fiscalYear: Int?
	public var goodwill: Int?
	public var intangibleAssets: Int?
	public var inventory: Int?
	public var longTermDebt: Int?
	public var longTermInvestments: Int?
	public var minorityInterest: Int?
	public var netTangibleAssets: Int?
	public var otherAssets: Int?
	public var otherCurrentAssets: Int?
	public var otherCurrentLiabilities: Int?
	public var otherLiabilities: Int?
	public var propertyPlantEquipment: Int?
	public var receivables: Int?
	public var reportDate: String?
	public var retainedEarnings: Int?
	public var shareholderEquity: Int?
	public var shortTermInvestments: Int?
	public var symbol: String?
	public var totalAssets: Int?
	public var totalCurrentLiabilities: Int?
	public var totalLiabilities: Int?
	public var treasuryStock: Int?
	public var id: String?
	public var key: String?
	public var subkey: String?
	public var date: Date?
	public var updated: Date?
	
	enum CodingKeys: String, CodingKey {
		case accountsPayable = "accountsPayable"
		case capitalSurplus = "capitalSurplus"
		case commonStock = "commonStock"
		case currency = "currency"
		case currentAssets = "currentAssets"
		case currentCash = "currentCash"
		case currentLongTermDebt = "currentLongTermDebt"
		case filingType = "filingType"
		case fiscalDate = "fiscalDate"
		case fiscalQuarter = "fiscalQuarter"
		case fiscalYear = "fiscalYear"
		case goodwill = "goodwill"
		case intangibleAssets = "intangibleAssets"
		case inventory = "inventory"
		case longTermDebt = "longTermDebt"
		case longTermInvestments = "longTermInvestments"
		case minorityInterest = "minorityInterest"
		case netTangibleAssets = "netTangibleAssets"
		case otherAssets = "otherAssets"
		case otherCurrentAssets = "otherCurrentAssets"
		case otherCurrentLiabilities = "otherCurrentLiabilities"
		case otherLiabilities = "otherLiabilities"
		case propertyPlantEquipment = "propertyPlantEquipment"
		case receivables = "receivables"
		case reportDate = "reportDate"
		case retainedEarnings = "retainedEarnings"
		case shareholderEquity = "shareholderEquity"
		case shortTermInvestments = "shortTermInvestments"
		case symbol = "symbol"
		case totalAssets = "totalAssets"
		case totalCurrentLiabilities = "totalCurrentLiabilities"
		case totalLiabilities = "totalLiabilities"
		case treasuryStock = "treasuryStock"
		case id = "id"
		case key = "key"
		case subkey = "subkey"
		case date = "date"
		case updated = "updated"
	}
	
	public init(accountsPayable: Int?, capitalSurplus: JSONNull?, commonStock: Int?, currency: String?, currentAssets: Int?, currentCash: Int?, currentLongTermDebt: Int?, filingType: String?, fiscalDate: String?, fiscalQuarter: Int?, fiscalYear: Int?, goodwill: Int?, intangibleAssets: Int?, inventory: Int?, longTermDebt: Int?, longTermInvestments: Int?, minorityInterest: Int?, netTangibleAssets: Int?, otherAssets: Int?, otherCurrentAssets: Int?, otherCurrentLiabilities: Int?, otherLiabilities: Int?, propertyPlantEquipment: Int?, receivables: Int?, reportDate: String?, retainedEarnings: Int?, shareholderEquity: Int?, shortTermInvestments: Int?, symbol: String?, totalAssets: Int?, totalCurrentLiabilities: Int?, totalLiabilities: Int?, treasuryStock: Int?, id: String?, key: String?, subkey: String?, date: Date?, updated: Date?) {
		self.accountsPayable = accountsPayable
		self.capitalSurplus = capitalSurplus
		self.commonStock = commonStock
		self.currency = currency
		self.currentAssets = currentAssets
		self.currentCash = currentCash
		self.currentLongTermDebt = currentLongTermDebt
		self.filingType = filingType
		self.fiscalDate = fiscalDate
		self.fiscalQuarter = fiscalQuarter
		self.fiscalYear = fiscalYear
		self.goodwill = goodwill
		self.intangibleAssets = intangibleAssets
		self.inventory = inventory
		self.longTermDebt = longTermDebt
		self.longTermInvestments = longTermInvestments
		self.minorityInterest = minorityInterest
		self.netTangibleAssets = netTangibleAssets
		self.otherAssets = otherAssets
		self.otherCurrentAssets = otherCurrentAssets
		self.otherCurrentLiabilities = otherCurrentLiabilities
		self.otherLiabilities = otherLiabilities
		self.propertyPlantEquipment = propertyPlantEquipment
		self.receivables = receivables
		self.reportDate = reportDate
		self.retainedEarnings = retainedEarnings
		self.shareholderEquity = shareholderEquity
		self.shortTermInvestments = shortTermInvestments
		self.symbol = symbol
		self.totalAssets = totalAssets
		self.totalCurrentLiabilities = totalCurrentLiabilities
		self.totalLiabilities = totalLiabilities
		self.treasuryStock = treasuryStock
		self.id = id
		self.key = key
		self.subkey = subkey
		self.date = date
		self.updated = updated
	}
}

// MARK: - Encode/decode helpers

public class JSONNull: Codable, Hashable {
	
	public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
		return true
	}
	
	public func hash(into hasher: inout Hasher) {
		hasher.combine(0)
	}
	
	public init() {}
	
	public required init(from decoder: Decoder) throws {
		let container = try decoder.singleValueContainer()
		if !container.decodeNil() {
			throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
		}
	}
	
	public func encode(to encoder: Encoder) throws {
		var container = encoder.singleValueContainer()
		try container.encodeNil()
	}
}
