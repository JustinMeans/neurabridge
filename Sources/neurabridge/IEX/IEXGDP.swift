//
//  File.swift
//  
//
//  Created by Justin Means on 6/10/21.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let iEXGDPS = try? newJSONDecoder().decode(IEXGDPS.self, from: jsonData)

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

import Foundation

// MARK: - IEXGdp
public struct IEXGDP: Codable, Hashable {
	public var value: Double?
	public var id: String?
	public var key: String?
	public var subkey: String?
	public var date: Date?
	public var updated: Int?
	
	enum CodingKeys: String, CodingKey {
		case value = "value"
		case id = "id"
		case key = "key"
		case subkey = "subkey"
		case date = "date"
		case updated = "updated"
	}
	
	public init(value: Double?, id: String?, key: String?, subkey: String?, date: Date?, updated: Int?) {
		self.value = value
		self.id = id
		self.key = key
		self.subkey = subkey
		self.date = date
		self.updated = updated
	}
}

public typealias IEXGDPs = [IEXGDP]
