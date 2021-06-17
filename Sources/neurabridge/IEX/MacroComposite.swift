//
//  File.swift
//  
//
//  Created by Justin Means on 6/10/21.
//

import Foundation

public struct MacroComposite {
	public struct Global: Codable, Hashable, Briefable, Speakable {
		public var speechResponse: [String]?
		
		public var briefItem: BriefItem {
			BriefItem(briefMode: .macroUpdate(self), speechItems: speechVariations.randomElement()!)
		}
		
		public var speechVariations: [Speech.Items] {
			[
			[
				Speech.Item.conversational("""
					Total markets are performing at \((sectorMacroPerformance.unwrapped * 100).dollar)% today.
					"""),
				Speech.Item.news("""
					The hottest stock today is \((gainers?.first?.companyName).unwrapped) trading up \(((gainers?.first?.changePercent).unwrapped * 100).dollar) %, followed by \(gainers?.prefix(3).dropFirst().map({ $0.companyName.unwrapped }).joined(separator: ", and") ?? "")
					Today's losers include: \((losers?.first?.companyName).unwrapped) trading down \(((losers?.first?.changePercent).unwrapped * 100).dollar) %, followed by \(losers?.prefix(3).dropFirst().map({ $0.companyName.unwrapped }).joined(separator: ", and") ?? "")
					""")
			]
			]
		}
		
		public init(mostActive: [IEXQuote]? = nil, gainers: [IEXQuote]? = nil, losers: [IEXQuote]? = nil, volume: [IEXQuote]? = nil, sectorPerformances: IEXSectorPerformances? = nil, marketVolumes: IEXMarketVolumes? = nil, gdps: IEXGDPs? = nil, cpis: IEXCPIs? = nil) {
			self.mostActive = mostActive
			self.gainers = gainers
			self.losers = losers
			self.volume = volume
			self.sectorPerformances = sectorPerformances
			self.marketVolumes = marketVolumes
			self.gdps = gdps
			self.cpis = cpis
		}
		
		public var mostActive: [IEXQuote]?
		public var gainers: [IEXQuote]?
		public var losers: [IEXQuote]?
		public var volume: [IEXQuote]?
		public var sectorPerformances: IEXSectorPerformances?
		public var marketVolumes: IEXMarketVolumes?
		public var gdps: IEXGDPs?
		public var cpis: IEXCPIs?
		
		public var sectorMacroPerformance: Double? {
			sectorPerformances?.reduce(0, { count, sector in
				count + sector.performance
			})
		}
		
	}
}
