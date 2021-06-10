// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let iEXCeoCompensation = try? newJSONDecoder().decode(IEXCeoCompensation.self, from: jsonData)

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

import Foundation

// MARK: - IEXCeoCompensation
public struct IEXCeoCompensation: Codable, Hashable {
	public var symbol: String?
	public var name: String?
	public var companyName: String?
	public var location: String?
	public var salary: Int?
	public var bonus: Int?
	public var stockAwards: Int?
	public var optionAwards: Int?
	public var nonEquityIncentives: Int?
	public var pensionAndDeferred: Int?
	public var otherComp: Int?
	public var total: Int?
	public var year: String?
	
	enum CodingKeys: String, CodingKey {
		case symbol = "symbol"
		case name = "name"
		case companyName = "companyName"
		case location = "location"
		case salary = "salary"
		case bonus = "bonus"
		case stockAwards = "stockAwards"
		case optionAwards = "optionAwards"
		case nonEquityIncentives = "nonEquityIncentives"
		case pensionAndDeferred = "pensionAndDeferred"
		case otherComp = "otherComp"
		case total = "total"
		case year = "year"
	}
	
	public init(symbol: String?, name: String?, companyName: String?, location: String?, salary: Int?, bonus: Int?, stockAwards: Int?, optionAwards: Int?, nonEquityIncentives: Int?, pensionAndDeferred: Int?, otherComp: Int?, total: Int?, year: String?) {
		self.symbol = symbol
		self.name = name
		self.companyName = companyName
		self.location = location
		self.salary = salary
		self.bonus = bonus
		self.stockAwards = stockAwards
		self.optionAwards = optionAwards
		self.nonEquityIncentives = nonEquityIncentives
		self.pensionAndDeferred = pensionAndDeferred
		self.otherComp = otherComp
		self.total = total
		self.year = year
	}
}
