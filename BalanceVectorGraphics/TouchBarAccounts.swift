//
//  TouchBarAccounts.swift
//  BalanceVectorGraphics
//
//  Created by Benjamin Baron on 12/10/16.
//  Copyright © 2016 Balanced Software. All rights reserved.
//

import Foundation

// Only need to create entries for primary institutions, the rest are looked up in the db
fileprivate let lookupTable: [String: (_ frame: NSRect, _ original: Bool, _ pressed: Bool) -> ()] =
    ["amex":        TouchBarAccountButtons.drawAmex,
     "bbt":         TouchBarAccountButtons.drawBbt,
     "bofa":        TouchBarAccountButtons.drawBankOfAmerica,
     "capone":      TouchBarAccountButtons.drawCapitalOne,
     "capone360":   TouchBarAccountButtons.drawCapitalOne,
     "chase":       TouchBarAccountButtons.drawChase,
     "citi":        TouchBarAccountButtons.drawCitiBank,
     "discover":    TouchBarAccountButtons.drawDiscover,
     "fidelity":    TouchBarAccountButtons.drawFidelity,
     "ins_100000":  TouchBarAccountButtons.drawUnionBank,
     "ins_100007":  TouchBarAccountButtons.drawSimple,
     "ins_100008":  TouchBarAccountButtons.drawHuntingtonBank,
     "ins_100009":  TouchBarAccountButtons.drawBarclaycard,
     "ins_100012":  TouchBarAccountButtons.drawAllyFinancial,
     "ins_100013":  TouchBarAccountButtons.drawMtBank,
     "ins_100020":  TouchBarAccountButtons.drawPaypal,
     "ins_100023":  TouchBarAccountButtons.drawFifthThirdBank,
     "ins_100047":  TouchBarAccountButtons.drawCitizensBank,
     "ins_100049":  TouchBarAccountButtons.drawWoodforestBank,
     "ins_100053":  TouchBarAccountButtons.drawKeyBank,
     "ins_100096":  TouchBarAccountButtons.drawEtrade,
     "ins_107233":  TouchBarAccountButtons.drawScottrade,
     "ins_108768":  TouchBarAccountButtons.drawVanguard,
     "ins_109136":  TouchBarAccountButtons.drawBankOfTheWest,
     "ins_109142":  TouchBarAccountButtons.drawSiliconValleyBank,
     "ins_109176":  TouchBarAccountButtons.drawBbva,
     "ins_109188":  TouchBarAccountButtons.drawTarget]

public extension TouchBarAccountButtons {
    public static func drawingFunction(forType type: String) -> ((_ frame: NSRect, _ original: Bool, _ pressed: Bool) -> ())? {
        return lookupTable[type]
    }
}
