//
//  File.swift
//  
//
//  Created by Justin Means on 6/6/21.
//

import Foundation

public struct News: Codable {
	public struct Global: Codable, Briefable, Speakable {
		public var speechResponse: [String]?
		
		public var briefItem: BriefItem {
			BriefItem(briefMode: .newsItem(self), speechItems: speechVariations.randomElement()!)
		}
		
		public var speechVariations: [Speech.Items] {
			[
				[
					Speech.Item.news("""
					\(source) says that \(headline).
					\(summary).
					""")
				],
				[
					Speech.Item.news("""
					\(headline), according to \(source).
					\(summary).
					""")
				],
				[
					Speech.Item.news("""
					\(headline), according to \(source).
					""")
				],
				[
					Speech.Item.news("""
					\(source) says that \(headline).
					""")
				]
			]
		}
		
		public init(id: String, publishDate: Date, headline: String, source: String, url: String, summary: String, related: String? = nil, imageURL: String? = nil, lang: String? = nil, hasPaywall: Bool? = nil) {
			self.id = id
			self.publishDate = publishDate
			self.headline = headline
			self.source = source
			self.url = url
			self.summary = summary
			self.related = related
			self.imageURL = imageURL
			self.lang = lang
			self.hasPaywall = hasPaywall
		}
		
		public var id: String
		public var publishDate: Date
		public var headline: String
		public var source: String
		public var url: String
		public var summary: String
		public var related: String?
		public var imageURL: String?
		public var lang: String?
		public var hasPaywall: Bool?
		
	}
	
	public enum NewsType: StringLiteralType, RawRepresentable, Codable {
		public static let schema = "news_type_enum"
		case macro
		case micro
		
		
	}
}
