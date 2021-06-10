// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let aLPBars = try? newJSONDecoder().decode(ALPBars.self, from: jsonData)

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

import Foundation

// MARK: - ALPBars
public struct ALPBars: Codable, Hashable {
	public var bars: [ALPBar]?
	public var symbol: String?
	public var nextPageToken: String?
	
	enum CodingKeys: String, CodingKey {
		case bars = "bars"
		case symbol = "symbol"
		case nextPageToken = "next_page_token"
	}
	
	public init(bars: [ALPBar]?, symbol: String?, nextPageToken: String?) {
		self.bars = bars
		self.symbol = symbol
		self.nextPageToken = nextPageToken
	}
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - ALPBar
public struct ALPBar: Codable, Hashable {
	public var t: Date?
	public var o: Double?
	public var h: Double?
	public var l: Double?
	public var c: Double?
	public var v: Int?
	
	enum CodingKeys: String, CodingKey {
		case t = "t"
		case o = "o"
		case h = "h"
		case l = "l"
		case c = "c"
		case v = "v"
	}
	
	public init(t: Date?, o: Double?, h: Double?, l: Double?, c: Double?, v: Int?) {
		self.t = t
		self.o = o
		self.h = h
		self.l = l
		self.c = c
		self.v = v
	}
}
