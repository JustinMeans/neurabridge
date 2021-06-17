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
//   let iEXSectorPerformances = try? newJSONDecoder().decode(IEXSectorPerformances.self, from: jsonData)

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

import Foundation

// MARK: - IEXSectorPerformance
public struct IEXSectorPerformance: Codable, Hashable {
	public var type: String
	public var name: String
	public var performance: Double
	public var lastUpdated: Date
	
	enum CodingKeys: String, CodingKey {
		case type = "type"
		case name = "name"
		case performance = "performance"
		case lastUpdated = "lastUpdated"
	}
	
	public init(type: String, name: String, performance: Double, lastUpdated: Date) {
		self.type = type
		self.name = name
		self.performance = performance
		self.lastUpdated = lastUpdated
	}
}

public typealias IEXSectorPerformances = [IEXSectorPerformance]
