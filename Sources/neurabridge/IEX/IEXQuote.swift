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
//   let iEXQuote = try? newJSONDecoder().decode(IEXQuote.self, from: jsonData)

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

import Foundation

// MARK: - IEXQuote
public struct IEXQuote: Codable, Hashable, Identifiable {
	public var id = UUID()
	public var symbol: String?
	public var companyName: String?
	public var primaryExchange: String?
	public var calculationPrice: String?
	public var quoteOpen: Double?
	public var openTime: Date?
	public var openSource: String?
	public var close: Double?
	public var closeTime: Date?
	public var closeSource: String?
	public var high: Double?
	public var highTime: Date?
	public var highSource: String?
	public var low: Double?
	public var lowTime: Date?
	public var lowSource: String?
	public var latestPrice: Double?
	public var latestSource: String?
	public var latestTime: String?
	public var latestUpdate: Int?
	public var latestVolume: Decimal?
	public var iexRealtimePrice: Double?
	public var iexRealtimeSize: Decimal?
	public var iexLastUpdated: Date?
	public var delayedPrice: Double?
	public var delayedPriceTime: Date?
	public var oddLotDelayedPrice: Double?
	public var oddLotDelayedPriceTime: Date?
	public var extendedPrice: Double?
	public var extendedChange: Double?
	public var extendedChangePercent: Double?
	public var extendedPriceTime: Date?
	public var previousClose: Double?
	public var previousVolume: Decimal?
	public var change: Double?
	public var changePercent: Double?
	public var volume: Decimal?
	public var iexMarketPercent: Double?
	public var iexVolume: Decimal?
	public var avgTotalVolume: Decimal?
	public var iexBidPrice: Decimal?
	public var iexBidSize: Decimal?
	public var iexAskPrice: Decimal?
	public var iexAskSize: Decimal?
	public var iexOpen: Double?
	public var iexOpenTime: Date?
	public var iexClose: Double?
	public var iexCloseTime: Date?
	public var marketCap: Decimal?
	public var peRatio: Double?
	public var week52High: Double?
	public var week52Low: Double?
	public var ytdChange: Double?
	public var lastTradeTime: Date?
	public var isUSMarketOpen: Bool?
	
	enum CodingKeys: String, CodingKey {
		case symbol = "symbol"
		case companyName = "companyName"
		case primaryExchange = "primaryExchange"
		case calculationPrice = "calculationPrice"
		case quoteOpen = "open"
		case openTime = "openTime"
		case openSource = "openSource"
		case close = "close"
		case closeTime = "closeTime"
		case closeSource = "closeSource"
		case high = "high"
		case highTime = "highTime"
		case highSource = "highSource"
		case low = "low"
		case lowTime = "lowTime"
		case lowSource = "lowSource"
		case latestPrice = "latestPrice"
		case latestSource = "latestSource"
		case latestTime = "latestTime"
		case latestUpdate = "latestUpdate"
		case latestVolume = "latestVolume"
		case iexRealtimePrice = "iexRealtimePrice"
		case iexRealtimeSize = "iexRealtimeSize"
		case iexLastUpdated = "iexLastUpdated"
		case delayedPrice = "delayedPrice"
		case delayedPriceTime = "delayedPriceTime"
		case oddLotDelayedPrice = "oddLotDelayedPrice"
		case oddLotDelayedPriceTime = "oddLotDelayedPriceTime"
		case extendedPrice = "extendedPrice"
		case extendedChange = "extendedChange"
		case extendedChangePercent = "extendedChangePercent"
		case extendedPriceTime = "extendedPriceTime"
		case previousClose = "previousClose"
		case previousVolume = "previousVolume"
		case change = "change"
		case changePercent = "changePercent"
		case volume = "volume"
		case iexMarketPercent = "iexMarketPercent"
		case iexVolume = "iexVolume"
		case avgTotalVolume = "avgTotalVolume"
		case iexBidPrice = "iexBidPrice"
		case iexBidSize = "iexBidSize"
		case iexAskPrice = "iexAskPrice"
		case iexAskSize = "iexAskSize"
		case iexOpen = "iexOpen"
		case iexOpenTime = "iexOpenTime"
		case iexClose = "iexClose"
		case iexCloseTime = "iexCloseTime"
		case marketCap = "marketCap"
		case peRatio = "peRatio"
		case week52High = "week52High"
		case week52Low = "week52Low"
		case ytdChange = "ytdChange"
		case lastTradeTime = "lastTradeTime"
		case isUSMarketOpen = "isUSMarketOpen"
	}
	
	public init(symbol: String?, companyName: String?, primaryExchange: String?, calculationPrice: String?, quoteOpen: Double?, openTime: Date?, openSource: String?, close: Double?, closeTime: Date?, closeSource: String?, high: Double?, highTime: Date?, highSource: String?, low: Double?, lowTime: Date?, lowSource: String?, latestPrice: Double?, latestSource: String?, latestTime: String?, latestUpdate: Int?, latestVolume: Decimal?, iexRealtimePrice: Double?, iexRealtimeSize: Decimal?, iexLastUpdated: Date?, delayedPrice: Double?, delayedPriceTime: Date?, oddLotDelayedPrice: Double?, oddLotDelayedPriceTime: Date?, extendedPrice: Double?, extendedChange: Double?, extendedChangePercent: Double?, extendedPriceTime: Date?, previousClose: Double?, previousVolume: Decimal?, change: Double?, changePercent: Double?, volume: Decimal?, iexMarketPercent: Double?, iexVolume: Decimal?, avgTotalVolume: Decimal?, iexBidPrice: Decimal?, iexBidSize: Decimal?, iexAskPrice: Decimal?, iexAskSize: Decimal?, iexOpen: Double?, iexOpenTime: Date?, iexClose: Double?, iexCloseTime: Date?, marketCap: Decimal?, peRatio: Double?, week52High: Double?, week52Low: Double?, ytdChange: Double?, lastTradeTime: Date?, isUSMarketOpen: Bool?) {
		self.symbol = symbol
		self.companyName = companyName
		self.primaryExchange = primaryExchange
		self.calculationPrice = calculationPrice
		self.quoteOpen = quoteOpen
		self.openTime = openTime
		self.openSource = openSource
		self.close = close
		self.closeTime = closeTime
		self.closeSource = closeSource
		self.high = high
		self.highTime = highTime
		self.highSource = highSource
		self.low = low
		self.lowTime = lowTime
		self.lowSource = lowSource
		self.latestPrice = latestPrice
		self.latestSource = latestSource
		self.latestTime = latestTime
		self.latestUpdate = latestUpdate
		self.latestVolume = latestVolume
		self.iexRealtimePrice = iexRealtimePrice
		self.iexRealtimeSize = iexRealtimeSize
		self.iexLastUpdated = iexLastUpdated
		self.delayedPrice = delayedPrice
		self.delayedPriceTime = delayedPriceTime
		self.oddLotDelayedPrice = oddLotDelayedPrice
		self.oddLotDelayedPriceTime = oddLotDelayedPriceTime
		self.extendedPrice = extendedPrice
		self.extendedChange = extendedChange
		self.extendedChangePercent = extendedChangePercent
		self.extendedPriceTime = extendedPriceTime
		self.previousClose = previousClose
		self.previousVolume = previousVolume
		self.change = change
		self.changePercent = changePercent
		self.volume = volume
		self.iexMarketPercent = iexMarketPercent
		self.iexVolume = iexVolume
		self.avgTotalVolume = avgTotalVolume
		self.iexBidPrice = iexBidPrice
		self.iexBidSize = iexBidSize
		self.iexAskPrice = iexAskPrice
		self.iexAskSize = iexAskSize
		self.iexOpen = iexOpen
		self.iexOpenTime = iexOpenTime
		self.iexClose = iexClose
		self.iexCloseTime = iexCloseTime
		self.marketCap = marketCap
		self.peRatio = peRatio
		self.week52High = week52High
		self.week52Low = week52Low
		self.ytdChange = ytdChange
		self.lastTradeTime = lastTradeTime
		self.isUSMarketOpen = isUSMarketOpen
	}
}
