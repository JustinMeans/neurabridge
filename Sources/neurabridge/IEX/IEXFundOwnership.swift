//
//  File.swift
//  
//
//  Created by Justin Means on 5/28/21.
//

import Foundation
// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let iEXFundOwnerships = try? newJSONDecoder().decode(IEXFundOwnerships.self, from: jsonData)

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

import Foundation

// MARK: - IEXFundOwnership
public struct IEXFundOwnership: Codable, Hashable {
	public var symbol: String
	public var id: String
	public var adjHolding: Int
	public var adjMv: Int
	public var entityProperName: String
	public var reportDate: Date
	public var reportedHolding: Int
	public var reportedMv: Int
	public var updated: Date
	
	enum CodingKeys: String, CodingKey {
		case symbol = "symbol"
		case id = "id"
		case adjHolding = "adjHolding"
		case adjMv = "adjMv"
		case entityProperName = "entityProperName"
		case reportDate = "report_date"
		case reportedHolding = "reportedHolding"
		case reportedMv = "reportedMv"
		case updated = "updated"
	}
	
	public init(symbol: String, id: String, adjHolding: Int, adjMv: Int, entityProperName: String, reportDate: Date, reportedHolding: Int, reportedMv: Int, updated: Date) {
		self.symbol = symbol
		self.id = id
		self.adjHolding = adjHolding
		self.adjMv = adjMv
		self.entityProperName = entityProperName
		self.reportDate = reportDate
		self.reportedHolding = reportedHolding
		self.reportedMv = reportedMv
		self.updated = updated
	}
}

public typealias IEXFundOwnerships = [IEXFundOwnership]
