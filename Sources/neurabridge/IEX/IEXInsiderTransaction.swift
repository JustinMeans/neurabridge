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
//   let iEXInsiderTransactions = try? newJSONDecoder().decode(IEXInsiderTransactions.self, from: jsonData)

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

import Foundation

// MARK: - IEXInsiderTransaction
public struct IEXInsiderTransaction: Codable, Hashable {
	public var conversionOrExercisePrice: JSONNull?
	public var directIndirect: String
	public var effectiveDate: Int
	public var filingDate: String
	public var fullName: String
	public var is10B51: Bool
	public var postShares: Int
	public var reportedTitle: String?
	public var symbol: String
	public var transactionCode: String
	public var transactionDate: String
	public var transactionPrice: Double?
	public var transactionShares: Int
	public var transactionValue: Int?
	public var id: String
	public var key: String
	public var subkey: String
	public var date: Date
	public var updated: Date
	public var tranPrice: Double?
	public var tranShares: Int
	public var tranValue: Int?
	
	enum CodingKeys: String, CodingKey {
		case conversionOrExercisePrice = "conversionOrExercisePrice"
		case directIndirect = "directIndirect"
		case effectiveDate = "effectiveDate"
		case filingDate = "filingDate"
		case fullName = "fullName"
		case is10B51 = "is10b51"
		case postShares = "postShares"
		case reportedTitle = "reportedTitle"
		case symbol = "symbol"
		case transactionCode = "transactionCode"
		case transactionDate = "transactionDate"
		case transactionPrice = "transactionPrice"
		case transactionShares = "transactionShares"
		case transactionValue = "transactionValue"
		case id = "id"
		case key = "key"
		case subkey = "subkey"
		case date = "date"
		case updated = "updated"
		case tranPrice = "tranPrice"
		case tranShares = "tranShares"
		case tranValue = "tranValue"
	}
	
	public init(conversionOrExercisePrice: JSONNull?, directIndirect: String, effectiveDate: Int, filingDate: String, fullName: String, is10B51: Bool, postShares: Int, reportedTitle: String?, symbol: String, transactionCode: String, transactionDate: String, transactionPrice: Double?, transactionShares: Int, transactionValue: Int?, id: String, key: String, subkey: String, date: Date, updated: Date, tranPrice: Double?, tranShares: Int, tranValue: Int?) {
		self.conversionOrExercisePrice = conversionOrExercisePrice
		self.directIndirect = directIndirect
		self.effectiveDate = effectiveDate
		self.filingDate = filingDate
		self.fullName = fullName
		self.is10B51 = is10B51
		self.postShares = postShares
		self.reportedTitle = reportedTitle
		self.symbol = symbol
		self.transactionCode = transactionCode
		self.transactionDate = transactionDate
		self.transactionPrice = transactionPrice
		self.transactionShares = transactionShares
		self.transactionValue = transactionValue
		self.id = id
		self.key = key
		self.subkey = subkey
		self.date = date
		self.updated = updated
		self.tranPrice = tranPrice
		self.tranShares = tranShares
		self.tranValue = tranValue
	}
}

public typealias IEXInsiderTransactions = [IEXInsiderTransaction]
