//
//  File.swift
//  
//
//  Created by Justin Means on 6/21/21.
//

import Foundation
import JWSNewsBridge

public struct BriefableNews: Codable, Hashable, Briefable, Speakable {
	public init(news: News.Global, speechResponse: [String]? = nil) {
		self.news = news
		self.speechResponse = speechResponse
	}
	
	public var news: News.Global
	public var speechResponse: [String]?
	
	public var briefItem: BriefItem {
		BriefItem(briefMode: .newsItem(self), speechItems: speechVariations.randomElement()!)
	}
	
	public var source: String {
		news.source.replacingOccurrences(of: "rss.", with: "").replacingOccurrences(of: ".com", with: "").replacingOccurrences(of: "www.", with: "")
	}
	
	public var speechVariations: [Speech.Items] {
		[
			[
				Speech.Item.news("""
					\(source) says that \(news.headline).
					\(news.summary).
					""")
			],
			[
				Speech.Item.news("""
					\(news.headline), according to \(source).
					\(news.summary).
					""")
			],
			[
				Speech.Item.news("""
					\(news.headline), according to \(source).
					""")
			],
			[
				Speech.Item.news("""
					\(source) says that \(news.headline).
					""")
			]
		]
	}
}
