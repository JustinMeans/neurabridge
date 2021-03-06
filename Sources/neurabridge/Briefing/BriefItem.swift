//
//  File.swift
//
//
//  Created by Justin Means on 6/16/21.
//

import Foundation
import JWSNewsBridge

public struct BriefItem: Codable, Hashable {
	public static func == (lhs: BriefItem, rhs: BriefItem) -> Bool {
		return lhs.hashValue == rhs.hashValue
	}
	
	public init(briefMode: BriefMode, speechItems: Speech.Items) {
		self.briefMode = briefMode
		self.speechItems = speechItems
	}
	
	public var briefMode: BriefMode
	public var speechItems: Speech.Items
	
	public var title: String {
		switch briefMode {
			case .dialogue(let item):
				return item.headline
			case .macroUpdate(let item):
				return "Markets Update"
			case .newsItem(let item):
				return item.news.headline
			case .tickerComposite(let item):
				return item.company?.companyName ?? "Neurafund Ticker Update"
		}
	}
	
	public var subtitle: String? {
		switch briefMode {
			case .newsItem(let item):
				return item.news.source
			case .tickerComposite(let item):
				return item.company?.symbol ?? ""
			@unknown default: return nil
		}
	}
	
	public var imageURL: URL? {
		switch briefMode {
			case .newsItem(let item):
				guard let string = item.news.imageURL else { return nil }
				return URL(string: string)
			case .tickerComposite(let item):
				return URL(string: "https://storage.googleapis.com/iex/api/logos/\((item.quote?.symbol).unwrapped).png")
			@unknown default: return nil
		}
	}
}

public typealias Brief = [BriefItem]

public protocol Briefable {
	var briefItem: BriefItem { get }
	var speechResponse: [String]? { get set }
}

public enum BriefMode: Codable, Hashable {
	public var speechResponse: [String]? {
		switch self {
			
			case .tickerComposite(let item):
				return item.speechResponse
			case .macroUpdate(let item):
				return item.speechResponse
			case .newsItem(let item):
				return item.speechResponse
			case .dialogue(let item):
				return item.speechResponse
		}
	}
	public static func == (lhs: BriefMode, rhs: BriefMode) -> Bool {
		return lhs.hashValue == rhs.hashValue
	}
	public var headline: String {
		switch self {
			case .dialogue(let item):
				return item.headline
			case .macroUpdate(_):
				return "Market Update"
			case .newsItem(let item):
				return item.news.headline
			case .tickerComposite(let item):
				return item.company?.companyName ?? "Asset Update"
		}
	}
	
	enum CodingKeys: CodingKey {
		case tickerComposite
		case macroUpdate
		case newsItem
		case dialogue
	}
	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		let key = container.allKeys.first
		
		switch key {
			case .dialogue:
				let briefDialogue = try container.decode(BriefDialogue.self, forKey: .dialogue)
				self = .dialogue(briefDialogue)
			case .macroUpdate:
				let macroUpdate = try container.decode(MacroComposite.Global.self, forKey: .macroUpdate)
				self = .macroUpdate(macroUpdate)
			case .newsItem:
				let newsItem = try container.decode(BriefableNews.self, forKey: .newsItem)
				self = .newsItem(newsItem)
			case .tickerComposite:
				let tickerComposite = try container.decode(TickerComposite.Micro.self, forKey: .tickerComposite)
				self = .tickerComposite(tickerComposite)
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
			case .dialogue(let item):
				try container.encode(item, forKey: .dialogue)
			case .macroUpdate(let item):
				try container.encode(item, forKey: .macroUpdate)
			case .newsItem(let item):
				try container.encode(item, forKey: .newsItem)
			case .tickerComposite(let item):
				try container.encode(item, forKey: .tickerComposite)
		}
	}
	
	case tickerComposite(_ tickerComposite: TickerComposite.Micro)
	case macroUpdate(_ macroComposite: MacroComposite.Global)
	case newsItem(_ item: BriefableNews)
	case dialogue(_ item: BriefDialogue)
}

public struct BriefDialogue: Codable, Briefable, Speakable, Hashable {
	public var speechVariations: [Speech.Items] {
		[
			[
				Speech.Item.conversational(headline),
				Speech.Item.conversational(content)
			]
		]
	}
	
	public var briefItem: BriefItem {
		BriefItem(briefMode: .dialogue(self), speechItems: speechVariations.randomElement()!)
	}
	
	public var speechResponse: [String]?
	
	public init(headline: String, content: String) {
		self.headline = headline
		self.content = content
	}
	
	public var headline: String
	public var content: String
}
