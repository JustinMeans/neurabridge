//
//  File.swift
//  
//
//  Created by Justin Means on 6/1/21.
//

import Foundation
//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - ALPLatestTrade
public struct ALPTrade: Codable, Hashable {
	public var t: String?
	public var x: String?
	public var p: Double?
	public var s: Int?
	public var c: [String]?
	public var i: Int?
	public var z: String?
	
	enum CodingKeys: String, CodingKey {
		case t = "t"
		case x = "x"
		case p = "p"
		case s = "s"
		case c = "c"
		case i = "i"
		case z = "z"
	}
	
	public init(t: String?, x: String?, p: Double?, s: Int?, c: [String]?, i: Int?, z: String?) {
		self.t = t
		self.x = x
		self.p = p
		self.s = s
		self.c = c
		self.i = i
		self.z = z
	}
}
