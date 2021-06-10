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
}
