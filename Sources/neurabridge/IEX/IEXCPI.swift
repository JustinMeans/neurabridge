//
//  File.swift
//  
//
//  Created by Justin Means on 6/10/21.
//

import Foundation

public struct IEXCPI: Codable, Hashable {
	public var value: Double?
	public var id: String?
	public var key: String?
	public var subkey: String?
	public var date: Date?
	public var updated: Int?
	
	enum CodingKeys: String, CodingKey {
		case value = "value"
		case id = "id"
		case key = "key"
		case subkey = "subkey"
		case date = "date"
		case updated = "updated"
	}
	
	public init(value: Double?, id: String?, key: String?, subkey: String?, date: Date?, updated: Int?) {
		self.value = value
		self.id = id
		self.key = key
		self.subkey = subkey
		self.date = date
		self.updated = updated
	}
}

public typealias IEXCPIs = [IEXCPI]
