// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let iEXDividends = try? newJSONDecoder().decode(IEXDividends.self, from: jsonData)

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

import Foundation

// MARK: - IEXDividend
public struct IEXDividend: Codable, Hashable {
	public var amount: Double?
	public var currency: String?
	public var declaredDate: String?
	public var dividendDescription: String?
	public var exDate: String?
	public var flag: String?
	public var frequency: String?
	public var paymentDate: String?
	public var recordDate: String?
	public var refid: Int?
	public var symbol: String?
	public var id: String?
	public var key: String?
	public var subkey: String?
	public var date: Date?
	public var updated: Date?
	
	enum CodingKeys: String, CodingKey {
		case amount = "amount"
		case currency = "currency"
		case declaredDate = "declaredDate"
		case dividendDescription = "description"
		case exDate = "exDate"
		case flag = "flag"
		case frequency = "frequency"
		case paymentDate = "paymentDate"
		case recordDate = "recordDate"
		case refid = "refid"
		case symbol = "symbol"
		case id = "id"
		case key = "key"
		case subkey = "subkey"
		case date = "date"
		case updated = "updated"
	}
	
	public init(amount: Double?, currency: String?, declaredDate: String?, dividendDescription: String?, exDate: String?, flag: String?, frequency: String?, paymentDate: String?, recordDate: String?, refid: Int?, symbol: String?, id: String?, key: String?, subkey: String?, date: Date?, updated: Date?) {
		self.amount = amount
		self.currency = currency
		self.declaredDate = declaredDate
		self.dividendDescription = dividendDescription
		self.exDate = exDate
		self.flag = flag
		self.frequency = frequency
		self.paymentDate = paymentDate
		self.recordDate = recordDate
		self.refid = refid
		self.symbol = symbol
		self.id = id
		self.key = key
		self.subkey = subkey
		self.date = date
		self.updated = updated
	}
}

public typealias IEXDividends = [IEXDividend]
