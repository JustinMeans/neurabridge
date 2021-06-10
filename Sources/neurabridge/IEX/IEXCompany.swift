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
//   let iEXCompany = try? newJSONDecoder().decode(IEXCompany.self, from: jsonData)

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

import Foundation

// MARK: - IEXCompany
public struct IEXCompany: Codable, Hashable {
	public var symbol: String?
	public var companyName: String?
	public var exchange: String?
	public var industry: String?
	public var website: String?
	public var companyDescription: String?
	public var ceo: String?
	public var securityName: String?
	public var issueType: String?
	public var sector: String?
	public var primarySicCode: Decimal?
	public var employees: Decimal?
	public var tags: [String]?
	public var address: String?
	public var address2: String?
	public var state: String?
	public var city: String?
	public var zip: String?
	public var country: String?
	public var phone: String?
	
	enum CodingKeys: String, CodingKey {
		case symbol = "symbol"
		case companyName = "companyName"
		case exchange = "exchange"
		case industry = "industry"
		case website = "website"
		case companyDescription = "description"
		case ceo = "CEO"
		case securityName = "securityName"
		case issueType = "issueType"
		case sector = "sector"
		case primarySicCode = "primarySicCode"
		case employees = "employees"
		case tags = "tags"
		case address = "address"
		case address2 = "address2"
		case state = "state"
		case city = "city"
		case zip = "zip"
		case country = "country"
		case phone = "phone"
	}
	
	public init(symbol: String?, companyName: String?, exchange: String?, industry: String?, website: String?, companyDescription: String?, ceo: String?, securityName: String?, issueType: String?, sector: String?, primarySicCode: Decimal?, employees: Decimal?, tags: [String]?, address: String?, address2: String?, state: String?, city: String?, zip: String?, country: String?, phone: String?) {
		self.symbol = symbol
		self.companyName = companyName
		self.exchange = exchange
		self.industry = industry
		self.website = website
		self.companyDescription = companyDescription
		self.ceo = ceo
		self.securityName = securityName
		self.issueType = issueType
		self.sector = sector
		self.primarySicCode = primarySicCode
		self.employees = employees
		self.tags = tags
		self.address = address
		self.address2 = address2
		self.state = state
		self.city = city
		self.zip = zip
		self.country = country
		self.phone = phone
	}
}

