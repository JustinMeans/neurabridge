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
//   let iEXInsiderSummaries = try? newJSONDecoder().decode(IEXInsiderSummaries.self, from: jsonData)

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

import Foundation

// MARK: - IEXInsiderSummary
public struct IEXInsiderSummary: Codable, Hashable {
	public var fullName: String
	public var netTransacted: Int?
	public var reportedTitle: String?
	public var symbol: String
	public var totalBought: Int?
	public var totalSold: Int?
	public var id: String
	public var key: String
	public var subkey: String
	public var date: Date
	public var updated: Date
	
	enum CodingKeys: String, CodingKey {
		case fullName = "fullName"
		case netTransacted = "netTransacted"
		case reportedTitle = "reportedTitle"
		case symbol = "symbol"
		case totalBought = "totalBought"
		case totalSold = "totalSold"
		case id = "id"
		case key = "key"
		case subkey = "subkey"
		case date = "date"
		case updated = "updated"
	}
	
	public init(fullName: String, netTransacted: Int?, reportedTitle: String?, symbol: String, totalBought: Int?, totalSold: Int?, id: String, key: String, subkey: String, date: Date, updated: Date) {
		self.fullName = fullName
		self.netTransacted = netTransacted
		self.reportedTitle = reportedTitle
		self.symbol = symbol
		self.totalBought = totalBought
		self.totalSold = totalSold
		self.id = id
		self.key = key
		self.subkey = subkey
		self.date = date
		self.updated = updated
	}
}

public typealias IEXInsiderSummaries = [IEXInsiderSummary]
