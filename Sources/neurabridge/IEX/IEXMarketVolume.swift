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
//   let iEXMarketVolumes = try? newJSONDecoder().decode(IEXMarketVolumes.self, from: jsonData)

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

import Foundation

// MARK: - IEXMarketVolume
public struct IEXMarketVolume: Codable, Hashable {
	public var mic: String
	public var tapeID: String
	public var venueName: String
	public var volume: Int
	public var tapeA: Int
	public var tapeB: Int
	public var tapeC: Int
	public var marketPercent: Double
	public var lastUpdated: Date
	
	enum CodingKeys: String, CodingKey {
		case mic = "mic"
		case tapeID = "tapeId"
		case venueName = "venueName"
		case volume = "volume"
		case tapeA = "tapeA"
		case tapeB = "tapeB"
		case tapeC = "tapeC"
		case marketPercent = "marketPercent"
		case lastUpdated = "lastUpdated"
	}
	
	public init(mic: String, tapeID: String, venueName: String, volume: Int, tapeA: Int, tapeB: Int, tapeC: Int, marketPercent: Double, lastUpdated: Date) {
		self.mic = mic
		self.tapeID = tapeID
		self.venueName = venueName
		self.volume = volume
		self.tapeA = tapeA
		self.tapeB = tapeB
		self.tapeC = tapeC
		self.marketPercent = marketPercent
		self.lastUpdated = lastUpdated
	}
}

public typealias IEXMarketVolumes = [IEXMarketVolume]
