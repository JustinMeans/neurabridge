//
//  File.swift
//  
//
//  Created by Justin Means on 5/28/21.
//

import Foundation

public struct User {
	public struct Global: Codable, Hashable, Identifiable {
		public var id: UUID? {
			micro.id
		}
		public init(micro: User.Micro, createdDate: Date? = nil, tickers: [TickerComposite.Micro]) {
			self.micro = micro
			self.createdDate = createdDate
			self.tickers = tickers
		}
		
		public var micro: Micro
		public var createdDate: Date?
		public var tickers: [TickerComposite.Micro]
	}
	
	public struct Micro: Codable, Hashable, Identifiable {
		public var id: UUID
		public var username: String
		public var profilePicURL: String?
		public var firstName: String?
		public var lastName: String?
		public var websiteURL: String?
		
		public init(id: UUID, username: String, profilePicURL: String?, firstName: String?, lastName: String?, websiteURL: String?) {
			self.id = id
			self.username = username
			self.profilePicURL = profilePicURL
			self.firstName = firstName
			self.lastName = lastName
			self.websiteURL = websiteURL
		}
	}
	
	public struct Personal: Codable, Hashable, Identifiable {
		public var id: UUID? {
			global?.micro.id
		}
		public init(email: String? = nil, token: String? = nil, global: User.Global? = nil) {
			self.email = email
			self.token = token
			self.global = global
		}
		
		public var email: String?
		public var token: String?
		public var global: Global?
		public var micro: Micro? {
			global?.micro
		}
	}
	
	public struct CreateData: Codable {
		public var username: String
		public var email: String
		public var firstName: String
		public var lastName: String
		public var password: String
		
		public init() {
			self.username = ""
			self.email = ""
			self.firstName = ""
			self.lastName = ""
			self.password = ""
		}
	}
	
	public struct SetProfilePicData: Codable, Hashable {
		public var user: Personal
		public var putURL: URL
	}
}
