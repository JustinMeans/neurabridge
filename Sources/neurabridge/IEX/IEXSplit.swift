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
//   let iEXSplits = try? newJSONDecoder().decode(IEXSplits.self, from: jsonData)

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

import Foundation

// MARK: - IEXSplit
public struct IEXSplit: Codable, Hashable {
	public var declaredDate: String?
	public var splitDescription: String?
	public var exDate: String?
	public var fromFactor: Double?
	public var ratio: Double?
	public var refid: Int?
	public var symbol: String?
	public var toFactor: Double?
	public var id: String?
	public var key: String?
	public var subkey: String?
	public var updated: Int?
	
	enum CodingKeys: String, CodingKey {
		case declaredDate = "declaredDate"
		case splitDescription = "description"
		case exDate = "exDate"
		case fromFactor = "fromFactor"
		case ratio = "ratio"
		case refid = "refid"
		case symbol = "symbol"
		case toFactor = "toFactor"
		case id = "id"
		case key = "key"
		case subkey = "subkey"
		case updated = "updated"
	}
	
}

public typealias IEXSplits = [IEXSplit]
