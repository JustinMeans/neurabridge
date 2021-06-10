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
//   let iEXSearchResults = try? newJSONDecoder().decode(IEXSearchResults.self, from: jsonData)

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

import Foundation

// MARK: - IEXSearchResult
public struct IEXSearchResult: Codable, Hashable {
	public var symbol: String?
	public var cik: String?
	public var securityName: String?
	public var securityType: String?
	public var region: String?
	public var exchange: String?
	public var sector: String?
	
	enum CodingKeys: String, CodingKey {
		case symbol = "symbol"
		case cik = "cik"
		case securityName = "securityName"
		case securityType = "securityType"
		case region = "region"
		case exchange = "exchange"
		case sector = "sector"
	}
	
	public init(symbol: String?, cik: String?, securityName: String?, securityType: String?, region: String?, exchange: String?, sector: String?) {
		self.symbol = symbol
		self.cik = cik
		self.securityName = securityName
		self.securityType = securityType
		self.region = region
		self.exchange = exchange
		self.sector = sector
	}
}

public typealias IEXSearchResults = [IEXSearchResult]
