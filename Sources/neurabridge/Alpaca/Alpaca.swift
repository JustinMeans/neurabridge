//
//  File.swift
//  
//
//  Created by Justin Means on 6/1/21.
//

import Foundation

public struct Alpaca {
	public enum API {
		case broker
		case data
		
		public var urlString: String {
			switch self {
				case .broker:
					return "https://broker-api.sandbox.alpaca.markets"
				case .data:
					return "https://data.alpaca.markets"
			}
		}
	}
	
	public enum Timeframe: String, CodingKey, Codable {
		case minute = "1Min"
		case hourly = "1Hour"
		case daily = "1Day"
	}
	
	// This file was generated from JSON Schema using quicktype, do not modify it directly.
	// To parse the JSON, add this file to your project and do:
	//
	//   let accountResponse = try? newJSONDecoder().decode(AccountResponse.self, from: jsonData)
	
	//
	// Hashable or Equatable:
	// The compiler will not be able to synthesize the implementation of Hashable or Equatable
	// for types that require the use of JSONAny, nor will the implementation of Hashable be
	// synthesized for types that have collections (such as arrays or dictionaries).
	
	// MARK: - AccountResponse
	public struct AccountResponse: Codable, Hashable {
		public var account: AccountResponseItem
		
		public init(account: AccountResponseItem) {
			self.account = account
		}
	}
	
	//
	// Hashable or Equatable:
	// The compiler will not be able to synthesize the implementation of Hashable or Equatable
	// for types that require the use of JSONAny, nor will the implementation of Hashable be
	// synthesized for types that have collections (such as arrays or dictionaries).
	
	// MARK: - Account
	public struct AccountResponseItem: Codable, Hashable {
		public var id, accountNumber, status, currency: String
		public var lastEquity, createdAt: String
		
		enum CodingKeys: String, CodingKey {
			case id
			case accountNumber = "account_number"
			case status, currency
			case lastEquity = "last_equity"
			case createdAt = "created_at"
		}
		
		public init(id: String, accountNumber: String, status: String, currency: String, lastEquity: String, createdAt: String) {
			self.id = id
			self.accountNumber = accountNumber
			self.status = status
			self.currency = currency
			self.lastEquity = lastEquity
			self.createdAt = createdAt
		}
	}

	
	// This file was generated from JSON Schema using quicktype, do not modify it directly.
	// To parse the JSON, add this file to your project and do:
	//
	//   let account = try? newJSONDecoder().decode(Account.self, from: jsonData)
	
	//
	// Hashable or Equatable:
	// The compiler will not be able to synthesize the implementation of Hashable or Equatable
	// for types that require the use of JSONAny, nor will the implementation of Hashable be
	// synthesized for types that have collections (such as arrays or dictionaries).
	
	// MARK: - Account
	public struct Account: Codable, Hashable {
		public var contact: Contact
		public var identity: Identity
		public var disclosures: Disclosures
		public var agreements: [Agreement]
		public var documents: [Document]
		public var trustedContact: TrustedContact
		
		enum CodingKeys: String, CodingKey {
			case contact, identity, disclosures, agreements, documents
			case trustedContact = "trusted_contact"
		}
		
		public init(contact: Contact, identity: Identity, disclosures: Disclosures, agreements: [Agreement], documents: [Document], trustedContact: TrustedContact) {
			self.contact = contact
			self.identity = identity
			self.disclosures = disclosures
			self.agreements = agreements
			self.documents = documents
			self.trustedContact = trustedContact
		}
	}
	
	//
	// Hashable or Equatable:
	// The compiler will not be able to synthesize the implementation of Hashable or Equatable
	// for types that require the use of JSONAny, nor will the implementation of Hashable be
	// synthesized for types that have collections (such as arrays or dictionaries).
	
	// MARK: - Agreement
	public struct Agreement: Codable, Hashable {
		public var agreement: String
		public var signedAt: Date
		public var ipAddress: String
		
		enum CodingKeys: String, CodingKey {
			case agreement
			case signedAt = "signed_at"
			case ipAddress = "ip_address"
		}
		
		public init(agreement: String, signedAt: Date, ipAddress: String) {
			self.agreement = agreement
			self.signedAt = signedAt
			self.ipAddress = ipAddress
		}
	}
	
	//
	// Hashable or Equatable:
	// The compiler will not be able to synthesize the implementation of Hashable or Equatable
	// for types that require the use of JSONAny, nor will the implementation of Hashable be
	// synthesized for types that have collections (such as arrays or dictionaries).
	
	// MARK: - Contact
	public struct Contact: Codable, Hashable {
		public var emailAddress, phoneNumber: String
		public var streetAddress: [String]
		public var city, state, postalCode, country: String
		
		enum CodingKeys: String, CodingKey {
			case emailAddress = "email_address"
			case phoneNumber = "phone_number"
			case streetAddress = "street_address"
			case city, state
			case postalCode = "postal_code"
			case country
		}
		
		public init(emailAddress: String, phoneNumber: String, streetAddress: [String], city: String, state: String, postalCode: String, country: String) {
			self.emailAddress = emailAddress
			self.phoneNumber = phoneNumber
			self.streetAddress = streetAddress
			self.city = city
			self.state = state
			self.postalCode = postalCode
			self.country = country
		}
	}
	
	//
	// Hashable or Equatable:
	// The compiler will not be able to synthesize the implementation of Hashable or Equatable
	// for types that require the use of JSONAny, nor will the implementation of Hashable be
	// synthesized for types that have collections (such as arrays or dictionaries).
	
	// MARK: - Disclosures
	public struct Disclosures: Codable, Hashable {
		public var isControlPerson, isAffiliatedExchangeOrFinra, isPoliticallyExposed, immediateFamilyExposed: Bool
		
		enum CodingKeys: String, CodingKey {
			case isControlPerson = "is_control_person"
			case isAffiliatedExchangeOrFinra = "is_affiliated_exchange_or_finra"
			case isPoliticallyExposed = "is_politically_exposed"
			case immediateFamilyExposed = "immediate_family_exposed"
		}
		
		public init(isControlPerson: Bool, isAffiliatedExchangeOrFinra: Bool, isPoliticallyExposed: Bool, immediateFamilyExposed: Bool) {
			self.isControlPerson = isControlPerson
			self.isAffiliatedExchangeOrFinra = isAffiliatedExchangeOrFinra
			self.isPoliticallyExposed = isPoliticallyExposed
			self.immediateFamilyExposed = immediateFamilyExposed
		}
	}
	
	//
	// Hashable or Equatable:
	// The compiler will not be able to synthesize the implementation of Hashable or Equatable
	// for types that require the use of JSONAny, nor will the implementation of Hashable be
	// synthesized for types that have collections (such as arrays or dictionaries).
	
	// MARK: - Document
	public struct Document: Codable, Hashable {
		public var documentType: String
		public var documentSubType: String?
		public var content, mimeType: String
		
		enum CodingKeys: String, CodingKey {
			case documentType = "document_type"
			case documentSubType = "document_sub_type"
			case content
			case mimeType = "mime_type"
		}
		
		public init(documentType: String, documentSubType: String?, content: String, mimeType: String) {
			self.documentType = documentType
			self.documentSubType = documentSubType
			self.content = content
			self.mimeType = mimeType
		}
	}
	
	//
	// Hashable or Equatable:
	// The compiler will not be able to synthesize the implementation of Hashable or Equatable
	// for types that require the use of JSONAny, nor will the implementation of Hashable be
	// synthesized for types that have collections (such as arrays or dictionaries).
	
	// MARK: - Identity
	public struct Identity: Codable, Hashable {
		public var givenName, familyName, dateOfBirth, taxID: String
		public var taxIDType, countryOfCitizenship, countryOfBirth, countryOfTaxResidence: String
		public var fundingSource: [String]
		
		enum CodingKeys: String, CodingKey {
			case givenName = "given_name"
			case familyName = "family_name"
			case dateOfBirth = "date_of_birth"
			case taxID = "tax_id"
			case taxIDType = "tax_id_type"
			case countryOfCitizenship = "country_of_citizenship"
			case countryOfBirth = "country_of_birth"
			case countryOfTaxResidence = "country_of_tax_residence"
			case fundingSource = "funding_source"
		}
		
		public init(givenName: String, familyName: String, dateOfBirth: String, taxID: String, taxIDType: String, countryOfCitizenship: String, countryOfBirth: String, countryOfTaxResidence: String, fundingSource: [String]) {
			self.givenName = givenName
			self.familyName = familyName
			self.dateOfBirth = dateOfBirth
			self.taxID = taxID
			self.taxIDType = taxIDType
			self.countryOfCitizenship = countryOfCitizenship
			self.countryOfBirth = countryOfBirth
			self.countryOfTaxResidence = countryOfTaxResidence
			self.fundingSource = fundingSource
		}
	}
	
	//
	// Hashable or Equatable:
	// The compiler will not be able to synthesize the implementation of Hashable or Equatable
	// for types that require the use of JSONAny, nor will the implementation of Hashable be
	// synthesized for types that have collections (such as arrays or dictionaries).
	
	// MARK: - TrustedContact
	public struct TrustedContact: Codable, Hashable {
		public var givenName, familyName, emailAddress: String
		
		enum CodingKeys: String, CodingKey {
			case givenName = "given_name"
			case familyName = "family_name"
			case emailAddress = "email_address"
		}
		
		public init(givenName: String, familyName: String, emailAddress: String) {
			self.givenName = givenName
			self.familyName = familyName
			self.emailAddress = emailAddress
		}
	}

}
