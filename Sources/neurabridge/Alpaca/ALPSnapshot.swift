//
//  File.swift
//  
//
//  Created by Justin Means on 6/1/21.
//

import Foundation
// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let aLPSnapshot = try? newJSONDecoder().decode(ALPSnapshot.self, from: jsonData)

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

import Foundation

// MARK: - ALPSnapshot
public struct ALPSnapshot: Codable, Hashable {
	public var symbol: String?
	public var latestTrade: ALPTrade?
	public var latestQuote: ALPQuote?
	public var minuteBar: ALPBar?
	public var dailyBar: ALPBar?
	public var prevDailyBar: ALPBar?
	
	enum CodingKeys: String, CodingKey {
		case symbol = "symbol"
		case latestTrade = "latestTrade"
		case latestQuote = "latestQuote"
		case minuteBar = "minuteBar"
		case dailyBar = "dailyBar"
		case prevDailyBar = "prevDailyBar"
	}
	
	public init(symbol: String?, latestTrade: ALPTrade?, latestQuote:ALPQuote?, minuteBar: ALPBar?, dailyBar: ALPBar?, prevDailyBar: ALPBar?) {
		self.symbol = symbol
		self.latestTrade = latestTrade
		self.latestQuote = latestQuote
		self.minuteBar = minuteBar
		self.dailyBar = dailyBar
		self.prevDailyBar = prevDailyBar
	}
}




