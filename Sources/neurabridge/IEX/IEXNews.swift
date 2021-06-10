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
//   let iEXNews = try? newJSONDecoder().decode(IEXNewsResponse.self, from: jsonData)

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

import Foundation

// MARK: - IEXNew
public struct IEXNews: Codable, Hashable {
	public var datetime: Date
	public var headline: String
	public var source: String
	public var url: String
	public var summary: String
	public var related: String
	public var image: String?
	public var lang: String
	public var hasPaywall: Bool
	
	enum CodingKeys: String, CodingKey {
		case datetime = "datetime"
		case headline = "headline"
		case source = "source"
		case url = "url"
		case summary = "summary"
		case related = "related"
		case image = "image"
		case lang = "lang"
		case hasPaywall = "hasPaywall"
	}
	
	public init(datetime: Date, headline: String, source: String, url: String, summary: String, related: String, image: String?, lang: String, hasPaywall: Bool) {
		self.datetime = datetime
		self.headline = headline
		self.source = source
		self.url = url
		self.summary = summary
		self.related = related
		self.image = image
		self.lang = lang
		self.hasPaywall = hasPaywall
	}
}

public typealias IEXNewsResponse = [IEXNews]
