//
//  File.swift
//  
//
//  Created by Justin Means on 5/28/21.
//

import Foundation
//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - IEXStats
public struct IEXStats: Codable, Hashable {
	public var companyName: String?
	public var marketcap: Decimal?
	public var week52High: Double?
	public var week52Low: Double?
	public var week52HighSplitAdjustOnly: Double?
	public var week52LowSplitAdjustOnly: Double?
	public var week52Change: Double?
	public var sharesOutstanding: Decimal?
	public var float: Decimal?
	public var avg10Volume: Decimal?
	public var avg30Volume: Decimal?
	public var day200MovingAvg: Double?
	public var day50MovingAvg: Double?
	public var employees: Decimal?
	public var ttmEPS: Double?
	public var ttmDividendRate: Decimal?
	public var dividendYield: Decimal?
	public var nextDividendDate: String?
	public var exDividendDate: String?
	public var nextEarningsDate: String?
	public var peRatio: Double?
	public var beta: Double?
	public var maxChangePercent: Double?
	public var year5ChangePercent: Double?
	public var year2ChangePercent: Double?
	public var year1ChangePercent: Double?
	public var ytdChangePercent: Double?
	public var month6ChangePercent: Double?
	public var month3ChangePercent: Double?
	public var month1ChangePercent: Double?
	public var day30ChangePercent: Double?
	public var day5ChangePercent: Double?
	
	enum CodingKeys: String, CodingKey {
		case companyName = "companyName"
		case marketcap = "marketcap"
		case week52High = "week52high"
		case week52Low = "week52low"
		case week52HighSplitAdjustOnly = "week52highSplitAdjustOnly"
		case week52LowSplitAdjustOnly = "week52lowSplitAdjustOnly"
		case week52Change = "week52change"
		case sharesOutstanding = "sharesOutstanding"
		case float = "float"
		case avg10Volume = "avg10Volume"
		case avg30Volume = "avg30Volume"
		case day200MovingAvg = "day200MovingAvg"
		case day50MovingAvg = "day50MovingAvg"
		case employees = "employees"
		case ttmEPS = "ttmEPS"
		case ttmDividendRate = "ttmDividendRate"
		case dividendYield = "dividendYield"
		case nextDividendDate = "nextDividendDate"
		case exDividendDate = "exDividendDate"
		case nextEarningsDate = "nextEarningsDate"
		case peRatio = "peRatio"
		case beta = "beta"
		case maxChangePercent = "maxChangePercent"
		case year5ChangePercent = "year5ChangePercent"
		case year2ChangePercent = "year2ChangePercent"
		case year1ChangePercent = "year1ChangePercent"
		case ytdChangePercent = "ytdChangePercent"
		case month6ChangePercent = "month6ChangePercent"
		case month3ChangePercent = "month3ChangePercent"
		case month1ChangePercent = "month1ChangePercent"
		case day30ChangePercent = "day30ChangePercent"
		case day5ChangePercent = "day5ChangePercent"
	}
	
	public init(companyName: String?, marketcap: Decimal?, week52High: Double?, week52Low: Double?, week52HighSplitAdjustOnly: Double?, week52LowSplitAdjustOnly: Double?, week52Change: Double?, sharesOutstanding: Decimal?, float: Decimal?, avg10Volume: Decimal?, avg30Volume: Decimal?, day200MovingAvg: Double?, day50MovingAvg: Double?, employees: Decimal?, ttmEPS: Double?, ttmDividendRate: Decimal?, dividendYield: Decimal?, nextDividendDate: String?, exDividendDate: String?, nextEarningsDate: String?, peRatio: Double?, beta: Double?, maxChangePercent: Double?, year5ChangePercent: Double?, year2ChangePercent: Double?, year1ChangePercent: Double?, ytdChangePercent: Double?, month6ChangePercent: Double?, month3ChangePercent: Double?, month1ChangePercent: Double?, day30ChangePercent: Double?, day5ChangePercent: Double?) {
		self.companyName = companyName
		self.marketcap = marketcap
		self.week52High = week52High
		self.week52Low = week52Low
		self.week52HighSplitAdjustOnly = week52HighSplitAdjustOnly
		self.week52LowSplitAdjustOnly = week52LowSplitAdjustOnly
		self.week52Change = week52Change
		self.sharesOutstanding = sharesOutstanding
		self.float = float
		self.avg10Volume = avg10Volume
		self.avg30Volume = avg30Volume
		self.day200MovingAvg = day200MovingAvg
		self.day50MovingAvg = day50MovingAvg
		self.employees = employees
		self.ttmEPS = ttmEPS
		self.ttmDividendRate = ttmDividendRate
		self.dividendYield = dividendYield
		self.nextDividendDate = nextDividendDate
		self.exDividendDate = exDividendDate
		self.nextEarningsDate = nextEarningsDate
		self.peRatio = peRatio
		self.beta = beta
		self.maxChangePercent = maxChangePercent
		self.year5ChangePercent = year5ChangePercent
		self.year2ChangePercent = year2ChangePercent
		self.year1ChangePercent = year1ChangePercent
		self.ytdChangePercent = ytdChangePercent
		self.month6ChangePercent = month6ChangePercent
		self.month3ChangePercent = month3ChangePercent
		self.month1ChangePercent = month1ChangePercent
		self.day30ChangePercent = day30ChangePercent
		self.day5ChangePercent = day5ChangePercent
	}
}
