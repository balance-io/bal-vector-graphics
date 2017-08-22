//
//  InstitutionHeaders.swift
//  institutionheaders
//
//  Created by Benjamin Baron on 9/16/16.
//  Copyright © 2016 Balanced Software. All rights reserved.
//

import Cocoa

// Only need to create entries for primary institutions, the rest are looked up in the db
fileprivate let lookupTable: [String: DrawingFunction] =
    [   // Crypto
        "Coinbase":    InstitutionHeaderBars.drawCoinbase,
        "Poloniex":    InstitutionHeaderBars.drawPoloniex,
        "GDAX":        InstitutionHeaderBars.drawGdax,
        "Bitfinex":    InstitutionHeaderBars.drawBitfinex,
        
        // Plaid
        "ins_100012":  InstitutionHeaderBars.drawAllyFinancial,
        "amex":        InstitutionHeaderBars.drawAmex,
        "bofa":        InstitutionHeaderBars.drawBankOfAmerica,
        "ins_109136":  InstitutionHeaderBars.drawBankOfTheWest,
        "ins_100009":  InstitutionHeaderBars.drawBarclaycard,
        "bbt":         InstitutionHeaderBars.drawBbt,
        "ins_109176":  InstitutionHeaderBars.drawBbvaCompass,
        "capone360":   InstitutionHeaderBars.drawCapitalOne,
        "capone":      InstitutionHeaderBars.drawCapitalOne,
        "ins_107220":  InstitutionHeaderBars.drawCharlesSchwab,
        "chase":       InstitutionHeaderBars.drawChase,
        "citi":        InstitutionHeaderBars.drawCitiBank,
        "ins_100047":  InstitutionHeaderBars.drawCitizensBank,
        "ins_100003":  InstitutionHeaderBars.drawDiscover,
        "ins_100096":  InstitutionHeaderBars.drawEtrade,
        "ins_100048":  InstitutionHeaderBars.drawFidelity,
        "ins_100023":  InstitutionHeaderBars.drawFifthThirdBank,
        "ins_100008":  InstitutionHeaderBars.drawHuntingtonBank,
        "ins_104022":  InstitutionHeaderBars.drawHsbc,
        "ins_100053":  InstitutionHeaderBars.drawKeyBank,
        "ins_100013":  InstitutionHeaderBars.drawMtBank,
        "nfcu":        InstitutionHeaderBars.drawNavyFederalCreditUnion,
        "ins_100020":  InstitutionHeaderBars.drawPaypal,
        "pnc":         InstitutionHeaderBars.drawPnc,
        "ins_107233":  InstitutionHeaderBars.drawScottrade,
        "ins_107401":  InstitutionHeaderBars.drawSiliconValleyBank,
        "ins_100007":  InstitutionHeaderBars.drawSimple,
        "suntrust":    InstitutionHeaderBars.drawSuntrust,
        "ins_109188":  InstitutionHeaderBars.drawTarget,
        "td":          InstitutionHeaderBars.drawTdBank,
        "ins_100000":  InstitutionHeaderBars.drawUnionBank,
        "usaa":        InstitutionHeaderBars.drawUsaa,
        "us":          InstitutionHeaderBars.drawUsBank,
        "ins_108768":  InstitutionHeaderBars.drawVanguard,
        "wells":       InstitutionHeaderBars.drawWellsFargo,
        "ins_100049":  InstitutionHeaderBars.drawWoodforestBank,
     
        // Seem to be no longer supported
        "31575":       InstitutionHeaderBars.drawDigit,
        "3148":        InstitutionHeaderBars.drawNavient,
        "272":         InstitutionHeaderBars.drawRegionsBank, // Possibly has an option
        "30671":       InstitutionHeaderBars.drawVenmo
]

public struct InstitutionHeaders {
    public static func headerViewForId(sourceInstitutionId: String) -> NSView? {
        if let drawingFunction = lookupTable[sourceInstitutionId] {
            return HeaderView(drawingFunction: drawingFunction)
        }
        
        return nil
    }
    
    public static func defaultHeaderView(backgroundColor: NSColor, foregroundColor: NSColor, font: NSFont, name: String) -> NSView? {
        let function = InstitutionHeaderBars.drawDefaultHeader(frame:backgroundColor:foregroundColor:font:name:)
        return HeaderView(colorDrawingFunction: function, backgroundColor: backgroundColor, foregroundColor: foregroundColor, font: font, name: name)
    }
}

fileprivate typealias ColorDrawingFunction = (_ frame: NSRect, _ backgroundColor: NSColor, _ foregroundColor: NSColor, _ font: NSFont, _ name: String) -> ()

fileprivate class HeaderView: NSView {
    fileprivate var drawingFunction: DrawingFunction?
    
    fileprivate var colorDrawingFunction: ColorDrawingFunction?
    fileprivate var backgroundColor: NSColor?
    fileprivate var foregroundColor: NSColor?
    fileprivate var font: NSFont?
    fileprivate var name: String?
    
    init(drawingFunction: @escaping DrawingFunction) {
        self.drawingFunction = drawingFunction
        super.init(frame: NSRect(x: 0, y: 0, width: 400, height: 28))
        self.wantsLayer = true
    }
    
    init(colorDrawingFunction: @escaping ColorDrawingFunction, backgroundColor: NSColor, foregroundColor: NSColor, font: NSFont, name: String) {
        self.colorDrawingFunction = colorDrawingFunction
        self.backgroundColor = backgroundColor
        self.foregroundColor = foregroundColor
        self.font = font
        self.name = name
        super.init(frame: NSRect(x: 0, y: 0, width: 400, height: 28))
        self.wantsLayer = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate override func draw(_ dirtyRect: NSRect) {
        if let drawingFunction = drawingFunction {
            drawingFunction(self.bounds)
        }
        
        if let colorDrawingFunction = colorDrawingFunction, let backgroundColor = backgroundColor, let foregroundColor = foregroundColor, let font = font, let name = name {
            colorDrawingFunction(self.bounds, backgroundColor, foregroundColor, font, name)
        }
    }
}
