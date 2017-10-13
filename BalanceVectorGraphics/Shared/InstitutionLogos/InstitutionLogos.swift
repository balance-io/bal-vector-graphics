//
//  InstitutionLogos.swift
//  BalanceVectorGraphics
//
//  Created by Benjamin Baron on 10/5/17.
//  Copyright © 2017 Balanced Software. All rights reserved.
//

import Foundation

// Only need to create entries for primary institutions, the rest are looked up in the db
fileprivate let lookupTable: [String: DrawingFunction] = [
    // Crypto
    "Coinbase":    ExchangeLogos.drawCoinbase,
    "Poloniex":    ExchangeLogos.drawPoloniex,
    "GDAX":        ExchangeLogos.drawGdax,
    "Bitfinex":    ExchangeLogos.drawBitfinex,
    "Kraken":      ExchangeLogos.drawKraken
]

public struct InstitutionLogos {
    public static func drawingFunctionForId(sourceInstitutionId: String) -> DrawingFunction? {
        return lookupTable[sourceInstitutionId]
    }
}
