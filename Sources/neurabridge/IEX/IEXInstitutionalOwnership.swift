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
//   let iEXInstitutionalOwnerships = try? newJSONDecoder().decode(IEXInstitutionalOwnerships.self, from: jsonData)

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

import Foundation

// MARK: - IEXInstitutionalOwnership
public struct IEXInstitutionalOwnership: Codable, Hashable {
	public var symbol: String
	public var id: String
	public var adjHolding: Int
	public var adjMv: Int
	public var entityProperName: String
	public var reportDate: Int
	public var filingDate: String
	public var reportedHolding: Int
	public var date: Date
	public var updated: Date
	
	enum CodingKeys: String, CodingKey {
		case symbol = "symbol"
		case id = "id"
		case adjHolding = "adjHolding"
		case adjMv = "adjMv"
		case entityProperName = "entityProperName"
		case reportDate = "reportDate"
		case filingDate = "filingDate"
		case reportedHolding = "reportedHolding"
		case date = "date"
		case updated = "updated"
	}
	
	public init(symbol: String, id: String, adjHolding: Int, adjMv: Int, entityProperName: String, reportDate: Int, filingDate: String, reportedHolding: Int, date: Date, updated: Date) {
		self.symbol = symbol
		self.id = id
		self.adjHolding = adjHolding
		self.adjMv = adjMv
		self.entityProperName = entityProperName
		self.reportDate = reportDate
		self.filingDate = filingDate
		self.reportedHolding = reportedHolding
		self.date = date
		self.updated = updated
	}
}

public typealias IEXInstitutionalOwnerships = [IEXInstitutionalOwnership]
