//
//  File.swift
//  
//
//  Created by Justin Means on 5/28/21.
//

import Foundation

public enum SearchResult: Codable, Identifiable {
	public var id: String? {
		switch self {
			case .user(let user):
				return user.id.uuidString
			case .iex(let iexResult):
				return iexResult.symbol
		}
	}
	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		let key = container.allKeys.first
		
		switch key {
			case .user:
				let user = try container.decode(User.Micro.self, forKey: .user)
				self = .user(user)
			case .iex:
				let iex = try container.decode(IEXSearchResult.self, forKey: .iex)
				self = .iex(iex)
			default:
				throw DecodingError.dataCorrupted(
					DecodingError.Context(
						codingPath: container.codingPath,
						debugDescription: "Unabled to decode enum."
					)
				)
		}
	}
	
	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)
		switch self {
			case .user(let user):
				try container.encode(user, forKey: .user)
			case .iex(let iex):
				try container.encode(iex, forKey: .iex)
		}
	}
	
	enum CodingKeys: CodingKey {
		case user
		case iex
	}
	
	case user(User.Micro)
	case iex(IEXSearchResult)
}
