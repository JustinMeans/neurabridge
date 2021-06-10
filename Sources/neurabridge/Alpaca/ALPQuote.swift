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

// MARK: - ALPLatestQuote
public struct ALPQuote: Codable, Hashable {
	public var t: String?
	public var ax: String?
	public var ap: Double?
	public var latestQuoteAs: Int?
	public var bx: String?
	public var bp: Double?
	public var bs: Int?
	public var c: [String]?
	
	enum CodingKeys: String, CodingKey {
		case t = "t"
		case ax = "ax"
		case ap = "ap"
		case latestQuoteAs = "as"
		case bx = "bx"
		case bp = "bp"
		case bs = "bs"
		case c = "c"
	}
	
	public init(t: String?, ax: String?, ap: Double?, latestQuoteAs: Int?, bx: String?, bp: Double?, bs: Int?, c: [String]?) {
		self.t = t
		self.ax = ax
		self.ap = ap
		self.latestQuoteAs = latestQuoteAs
		self.bx = bx
		self.bp = bp
		self.bs = bs
		self.c = c
	}
}
