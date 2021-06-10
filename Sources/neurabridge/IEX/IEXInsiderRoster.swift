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
//   let iEXInsiders = try? newJSONDecoder().decode(IEXInsiders.self, from: jsonData)

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

import Foundation

// MARK: - IEXInsider
public struct IEXInsiderRoster: Codable, Hashable {
	public var entityName: String
	public var position: Int
	public var reportDate: Date
	
	enum CodingKeys: String, CodingKey {
		case entityName = "entityName"
		case position = "position"
		case reportDate = "reportDate"
	}
	
	public init(entityName: String, position: Int, reportDate: Date) {
		self.entityName = entityName
		self.position = position
		self.reportDate = reportDate
	}
}

public typealias IEXInsiderRosters = [IEXInsiderRoster]
