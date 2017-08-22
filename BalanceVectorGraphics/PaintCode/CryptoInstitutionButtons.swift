//
//  CryptoInstitutionButtons.swift
//  BalanceVectorGraphics
//
//  Created by Benjamin Baron on 8/22/17.
//  Copyright © 2017 Balanced Software. All rights reserved.
//

import Foundation

public extension InstitutionButtons {
    //// Drawing Methods
    
    public static func drawCoinbaseButton(_ bounds: NSRect = NSRect(x: 0, y: 0, width: 191, height: 56), original: Bool = true, hover: Bool = false, pressed: Bool = false) {
        //// General Declarations
        let context = NSGraphicsContext.current!.cgContext
        
        //// Color Declarations
        let highlightGradientColor = NSColor(deviceRed: 1, green: 1, blue: 1, alpha: 0.09)
        let highlightGradientColor2 = NSColor(deviceRed: 1, green: 1, blue: 1, alpha: 0)
        let shadow2Color = NSColor(deviceRed: 1, green: 1, blue: 1, alpha: 0.36)
        let logoWhite = NSColor(deviceRed: 1, green: 1, blue: 1, alpha: 1)
        let coinbaseBackground = NSColor(deviceRed: 0.039, green: 0.455, blue: 0.773, alpha: 1)
        
        //// Gradient Declarations
        let highlightGradient = NSGradient(starting: highlightGradientColor, ending: highlightGradientColor2)!
        
        //// Shadow Declarations
        let outerShadow = NSShadow()
        outerShadow.shadowColor = NSColor.black
        outerShadow.shadowOffset = NSSize(width: 0, height: 0)
        outerShadow.shadowBlurRadius = 0.5
        let innerStroke = NSShadow()
        innerStroke.shadowColor = shadow2Color
        innerStroke.shadowOffset = NSSize(width: 0, height: 0)
        innerStroke.shadowBlurRadius = 0.5
        
        if (original) {
            //// coinbase
            NSGraphicsContext.saveGraphicsState()
            context.translateBy(x: bounds.minX + 95.5, y: bounds.maxY - 28)
            
            outerShadow.set()
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            
            
            //// coinbaseBase Drawing
            let coinbaseBasePath = NSBezierPath(roundedRect: NSRect(x: -88.5, y: -21, width: 177, height: 42), xRadius: 5, yRadius: 5)
            coinbaseBackground.setFill()
            coinbaseBasePath.fill()
            
            
            //// coinbaseHighlight Drawing
            let coinbaseHighlightPath = NSBezierPath(roundedRect: NSRect(x: -88.5, y: -21, width: 177, height: 42), xRadius: 5, yRadius: 5)
            highlightGradient.draw(in: coinbaseHighlightPath, angle: -45)
            
            ////// coinbaseHighlight Inner Shadow
            NSGraphicsContext.saveGraphicsState()
            coinbaseHighlightPath.bounds.clip()
            context.setShadow(offset: NSSize.zero, blur: 0, color: nil)
            
            context.setAlpha(innerStroke.shadowColor!.alphaComponent)
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            let coinbaseHighlightOpaqueShadow = NSShadow()
            coinbaseHighlightOpaqueShadow.shadowColor = innerStroke.shadowColor!.withAlphaComponent(1)
            coinbaseHighlightOpaqueShadow.shadowOffset = innerStroke.shadowOffset
            coinbaseHighlightOpaqueShadow.shadowBlurRadius = innerStroke.shadowBlurRadius
            coinbaseHighlightOpaqueShadow.set()
            
            context.setBlendMode(.sourceOut)
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            
            coinbaseHighlightOpaqueShadow.shadowColor!.setFill()
            coinbaseHighlightPath.fill()
            
            context.endTransparencyLayer()
            context.endTransparencyLayer()
            NSGraphicsContext.restoreGraphicsState()
            
            
            
            context.endTransparencyLayer()
            
            NSGraphicsContext.restoreGraphicsState()
        }
        
        
        if (hover) {
            //// coinbaseHover
            NSGraphicsContext.saveGraphicsState()
            context.translateBy(x: bounds.minX + 95.5, y: bounds.maxY - 28)
            context.scaleBy(x: 1.05, y: 1.05)
            
            outerShadow.set()
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            
            
            //// coinbaseBase 2 Drawing
            let coinbaseBase2Path = NSBezierPath(roundedRect: NSRect(x: -88.5, y: -21, width: 177, height: 42), xRadius: 5, yRadius: 5)
            coinbaseBackground.setFill()
            coinbaseBase2Path.fill()
            
            
            //// coinbaseHighlight 2 Drawing
            let coinbaseHighlight2Path = NSBezierPath(roundedRect: NSRect(x: -88.5, y: -21, width: 177, height: 42), xRadius: 5, yRadius: 5)
            highlightGradient.draw(in: coinbaseHighlight2Path, angle: -45)
            
            ////// coinbaseHighlight 2 Inner Shadow
            NSGraphicsContext.saveGraphicsState()
            coinbaseHighlight2Path.bounds.clip()
            context.setShadow(offset: NSSize.zero, blur: 0, color: nil)
            
            context.setAlpha(innerStroke.shadowColor!.alphaComponent)
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            let coinbaseHighlight2OpaqueShadow = NSShadow()
            coinbaseHighlight2OpaqueShadow.shadowColor = innerStroke.shadowColor!.withAlphaComponent(1)
            coinbaseHighlight2OpaqueShadow.shadowOffset = innerStroke.shadowOffset
            coinbaseHighlight2OpaqueShadow.shadowBlurRadius = innerStroke.shadowBlurRadius
            coinbaseHighlight2OpaqueShadow.set()
            
            context.setBlendMode(.sourceOut)
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            
            coinbaseHighlight2OpaqueShadow.shadowColor!.setFill()
            coinbaseHighlight2Path.fill()
            
            context.endTransparencyLayer()
            context.endTransparencyLayer()
            NSGraphicsContext.restoreGraphicsState()
            
            
            
            context.endTransparencyLayer()
            
            NSGraphicsContext.restoreGraphicsState()
        }
        
        
        if (pressed) {
            //// coinbasePressed
            NSGraphicsContext.saveGraphicsState()
            context.translateBy(x: bounds.minX + 95.5, y: bounds.maxY - 28)
            
            outerShadow.set()
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            
            
            //// coinbaseBase 3 Drawing
            let coinbaseBase3Path = NSBezierPath(roundedRect: NSRect(x: -88.5, y: -21, width: 177, height: 42), xRadius: 5, yRadius: 5)
            coinbaseBackground.setFill()
            coinbaseBase3Path.fill()
            
            
            //// coinbaseHighlight 3 Drawing
            let coinbaseHighlight3Path = NSBezierPath(roundedRect: NSRect(x: -88.5, y: -21, width: 177, height: 42), xRadius: 5, yRadius: 5)
            highlightGradient.draw(in: coinbaseHighlight3Path, angle: -45)
            
            ////// coinbaseHighlight 3 Inner Shadow
            NSGraphicsContext.saveGraphicsState()
            coinbaseHighlight3Path.bounds.clip()
            context.setShadow(offset: NSSize.zero, blur: 0, color: nil)
            
            context.setAlpha(innerStroke.shadowColor!.alphaComponent)
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            let coinbaseHighlight3OpaqueShadow = NSShadow()
            coinbaseHighlight3OpaqueShadow.shadowColor = innerStroke.shadowColor!.withAlphaComponent(1)
            coinbaseHighlight3OpaqueShadow.shadowOffset = innerStroke.shadowOffset
            coinbaseHighlight3OpaqueShadow.shadowBlurRadius = innerStroke.shadowBlurRadius
            coinbaseHighlight3OpaqueShadow.set()
            
            context.setBlendMode(.sourceOut)
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            
            coinbaseHighlight3OpaqueShadow.shadowColor!.setFill()
            coinbaseHighlight3Path.fill()
            
            context.endTransparencyLayer()
            context.endTransparencyLayer()
            NSGraphicsContext.restoreGraphicsState()
            
            
            
            context.endTransparencyLayer()
            
            NSGraphicsContext.restoreGraphicsState()
        }
        
        
        //// coinbaseLogo
        //// logo Drawing
        let logoPath = NSBezierPath()
        logoPath.move(to: NSPoint(x: bounds.minX + 60.24, y: bounds.maxY - 34.83))
        logoPath.curve(to: NSPoint(x: bounds.minX + 55, y: bounds.maxY - 28.63), controlPoint1: NSPoint(x: bounds.minX + 57.58, y: bounds.maxY - 34.83), controlPoint2: NSPoint(x: bounds.minX + 55, y: bounds.maxY - 32.93))
        logoPath.curve(to: NSPoint(x: bounds.minX + 60.24, y: bounds.maxY - 22.44), controlPoint1: NSPoint(x: bounds.minX + 55, y: bounds.maxY - 24.32), controlPoint2: NSPoint(x: bounds.minX + 57.58, y: bounds.maxY - 22.44))
        logoPath.curve(to: NSPoint(x: bounds.minX + 63.28, y: bounds.maxY - 23.26), controlPoint1: NSPoint(x: bounds.minX + 61.54, y: bounds.maxY - 22.44), controlPoint2: NSPoint(x: bounds.minX + 62.55, y: bounds.maxY - 22.77))
        logoPath.line(to: NSPoint(x: bounds.minX + 62.49, y: bounds.maxY - 25))
        logoPath.curve(to: NSPoint(x: bounds.minX + 60.54, y: bounds.maxY - 24.43), controlPoint1: NSPoint(x: bounds.minX + 62, y: bounds.maxY - 24.65), controlPoint2: NSPoint(x: bounds.minX + 61.27, y: bounds.maxY - 24.43))
        logoPath.curve(to: NSPoint(x: bounds.minX + 57.5, y: bounds.maxY - 28.6), controlPoint1: NSPoint(x: bounds.minX + 58.95, y: bounds.maxY - 24.43), controlPoint2: NSPoint(x: bounds.minX + 57.5, y: bounds.maxY - 25.69))
        logoPath.curve(to: NSPoint(x: bounds.minX + 60.54, y: bounds.maxY - 32.8), controlPoint1: NSPoint(x: bounds.minX + 57.5, y: bounds.maxY - 31.52), controlPoint2: NSPoint(x: bounds.minX + 59, y: bounds.maxY - 32.8))
        logoPath.curve(to: NSPoint(x: bounds.minX + 62.49, y: bounds.maxY - 32.23), controlPoint1: NSPoint(x: bounds.minX + 61.27, y: bounds.maxY - 32.8), controlPoint2: NSPoint(x: bounds.minX + 62, y: bounds.maxY - 32.58))
        logoPath.line(to: NSPoint(x: bounds.minX + 63.28, y: bounds.maxY - 34.02))
        logoPath.curve(to: NSPoint(x: bounds.minX + 60.24, y: bounds.maxY - 34.83), controlPoint1: NSPoint(x: bounds.minX + 62.53, y: bounds.maxY - 34.52), controlPoint2: NSPoint(x: bounds.minX + 61.54, y: bounds.maxY - 34.83))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 69.36, y: bounds.maxY - 34.83))
        logoPath.curve(to: NSPoint(x: bounds.minX + 64.12, y: bounds.maxY - 28.63), controlPoint1: NSPoint(x: bounds.minX + 65.98, y: bounds.maxY - 34.83), controlPoint2: NSPoint(x: bounds.minX + 64.12, y: bounds.maxY - 32.16))
        logoPath.curve(to: NSPoint(x: bounds.minX + 69.36, y: bounds.maxY - 22.44), controlPoint1: NSPoint(x: bounds.minX + 64.12, y: bounds.maxY - 25.09), controlPoint2: NSPoint(x: bounds.minX + 65.98, y: bounds.maxY - 22.44))
        logoPath.curve(to: NSPoint(x: bounds.minX + 74.59, y: bounds.maxY - 28.63), controlPoint1: NSPoint(x: bounds.minX + 72.74, y: bounds.maxY - 22.44), controlPoint2: NSPoint(x: bounds.minX + 74.59, y: bounds.maxY - 25.09))
        logoPath.curve(to: NSPoint(x: bounds.minX + 69.36, y: bounds.maxY - 34.83), controlPoint1: NSPoint(x: bounds.minX + 74.59, y: bounds.maxY - 32.16), controlPoint2: NSPoint(x: bounds.minX + 72.74, y: bounds.maxY - 34.83))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 76.63, y: bounds.maxY - 34.59))
        logoPath.line(to: NSPoint(x: bounds.minX + 76.63, y: bounds.maxY - 22.68))
        logoPath.line(to: NSPoint(x: bounds.minX + 79.06, y: bounds.maxY - 22.68))
        logoPath.line(to: NSPoint(x: bounds.minX + 79.06, y: bounds.maxY - 34.59))
        logoPath.line(to: NSPoint(x: bounds.minX + 76.63, y: bounds.maxY - 34.59))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 77.84, y: bounds.maxY - 20.52))
        logoPath.curve(to: NSPoint(x: bounds.minX + 76.4, y: bounds.maxY - 19.15), controlPoint1: NSPoint(x: bounds.minX + 77.04, y: bounds.maxY - 20.52), controlPoint2: NSPoint(x: bounds.minX + 76.4, y: bounds.maxY - 19.9))
        logoPath.curve(to: NSPoint(x: bounds.minX + 77.84, y: bounds.maxY - 17.78), controlPoint1: NSPoint(x: bounds.minX + 76.4, y: bounds.maxY - 18.4), controlPoint2: NSPoint(x: bounds.minX + 77.04, y: bounds.maxY - 17.78))
        logoPath.curve(to: NSPoint(x: bounds.minX + 79.28, y: bounds.maxY - 19.15), controlPoint1: NSPoint(x: bounds.minX + 78.64, y: bounds.maxY - 17.78), controlPoint2: NSPoint(x: bounds.minX + 79.28, y: bounds.maxY - 18.4))
        logoPath.curve(to: NSPoint(x: bounds.minX + 77.84, y: bounds.maxY - 20.52), controlPoint1: NSPoint(x: bounds.minX + 79.28, y: bounds.maxY - 19.9), controlPoint2: NSPoint(x: bounds.minX + 78.64, y: bounds.maxY - 20.52))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 88.62, y: bounds.maxY - 34.59))
        logoPath.line(to: NSPoint(x: bounds.minX + 88.62, y: bounds.maxY - 26.64))
        logoPath.curve(to: NSPoint(x: bounds.minX + 86.12, y: bounds.maxY - 24.38), controlPoint1: NSPoint(x: bounds.minX + 88.62, y: bounds.maxY - 25.25), controlPoint2: NSPoint(x: bounds.minX + 87.78, y: bounds.maxY - 24.38))
        logoPath.curve(to: NSPoint(x: bounds.minX + 83.94, y: bounds.maxY - 24.74), controlPoint1: NSPoint(x: bounds.minX + 85.24, y: bounds.maxY - 24.38), controlPoint2: NSPoint(x: bounds.minX + 84.42, y: bounds.maxY - 24.54))
        logoPath.line(to: NSPoint(x: bounds.minX + 83.94, y: bounds.maxY - 34.59))
        logoPath.line(to: NSPoint(x: bounds.minX + 81.53, y: bounds.maxY - 34.59))
        logoPath.line(to: NSPoint(x: bounds.minX + 81.53, y: bounds.maxY - 23.28))
        logoPath.curve(to: NSPoint(x: bounds.minX + 86.1, y: bounds.maxY - 22.44), controlPoint1: NSPoint(x: bounds.minX + 82.72, y: bounds.maxY - 22.79), controlPoint2: NSPoint(x: bounds.minX + 84.25, y: bounds.maxY - 22.44))
        logoPath.curve(to: NSPoint(x: bounds.minX + 91.05, y: bounds.maxY - 26.42), controlPoint1: NSPoint(x: bounds.minX + 89.44, y: bounds.maxY - 22.44), controlPoint2: NSPoint(x: bounds.minX + 91.05, y: bounds.maxY - 23.9))
        logoPath.line(to: NSPoint(x: bounds.minX + 91.05, y: bounds.maxY - 34.59))
        logoPath.line(to: NSPoint(x: bounds.minX + 88.62, y: bounds.maxY - 34.59))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 97.45, y: bounds.maxY - 34.83))
        logoPath.curve(to: NSPoint(x: bounds.minX + 93.46, y: bounds.maxY - 33.99), controlPoint1: NSPoint(x: bounds.minX + 95.91, y: bounds.maxY - 34.83), controlPoint2: NSPoint(x: bounds.minX + 94.38, y: bounds.maxY - 34.46))
        logoPath.line(to: NSPoint(x: bounds.minX + 93.46, y: bounds.maxY - 17.25))
        logoPath.line(to: NSPoint(x: bounds.minX + 95.86, y: bounds.maxY - 17.25))
        logoPath.line(to: NSPoint(x: bounds.minX + 95.86, y: bounds.maxY - 22.99))
        logoPath.curve(to: NSPoint(x: bounds.minX + 98.18, y: bounds.maxY - 22.51), controlPoint1: NSPoint(x: bounds.minX + 96.44, y: bounds.maxY - 22.73), controlPoint2: NSPoint(x: bounds.minX + 97.37, y: bounds.maxY - 22.51))
        logoPath.curve(to: NSPoint(x: bounds.minX + 103.33, y: bounds.maxY - 28.36), controlPoint1: NSPoint(x: bounds.minX + 101.25, y: bounds.maxY - 22.51), controlPoint2: NSPoint(x: bounds.minX + 103.33, y: bounds.maxY - 24.72))
        logoPath.curve(to: NSPoint(x: bounds.minX + 97.45, y: bounds.maxY - 34.83), controlPoint1: NSPoint(x: bounds.minX + 103.33, y: bounds.maxY - 32.84), controlPoint2: NSPoint(x: bounds.minX + 101.01, y: bounds.maxY - 34.83))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 109.89, y: bounds.maxY - 34.83))
        logoPath.curve(to: NSPoint(x: bounds.minX + 104.74, y: bounds.maxY - 31.1), controlPoint1: NSPoint(x: bounds.minX + 106.47, y: bounds.maxY - 34.83), controlPoint2: NSPoint(x: bounds.minX + 104.74, y: bounds.maxY - 33.44))
        logoPath.curve(to: NSPoint(x: bounds.minX + 111.88, y: bounds.maxY - 26.99), controlPoint1: NSPoint(x: bounds.minX + 104.74, y: bounds.maxY - 27.79), controlPoint2: NSPoint(x: bounds.minX + 108.28, y: bounds.maxY - 27.19))
        logoPath.line(to: NSPoint(x: bounds.minX + 111.88, y: bounds.maxY - 26.24))
        logoPath.curve(to: NSPoint(x: bounds.minX + 109.36, y: bounds.maxY - 24.21), controlPoint1: NSPoint(x: bounds.minX + 111.88, y: bounds.maxY - 24.74), controlPoint2: NSPoint(x: bounds.minX + 110.89, y: bounds.maxY - 24.21))
        logoPath.curve(to: NSPoint(x: bounds.minX + 106.07, y: bounds.maxY - 24.94), controlPoint1: NSPoint(x: bounds.minX + 108.23, y: bounds.maxY - 24.21), controlPoint2: NSPoint(x: bounds.minX + 106.86, y: bounds.maxY - 24.56))
        logoPath.line(to: NSPoint(x: bounds.minX + 105.45, y: bounds.maxY - 23.28))
        logoPath.curve(to: NSPoint(x: bounds.minX + 109.6, y: bounds.maxY - 22.44), controlPoint1: NSPoint(x: bounds.minX + 106.4, y: bounds.maxY - 22.86), controlPoint2: NSPoint(x: bounds.minX + 108.01, y: bounds.maxY - 22.44))
        logoPath.curve(to: NSPoint(x: bounds.minX + 114.18, y: bounds.maxY - 26.48), controlPoint1: NSPoint(x: bounds.minX + 112.45, y: bounds.maxY - 22.44), controlPoint2: NSPoint(x: bounds.minX + 114.18, y: bounds.maxY - 23.55))
        logoPath.line(to: NSPoint(x: bounds.minX + 114.18, y: bounds.maxY - 33.99))
        logoPath.curve(to: NSPoint(x: bounds.minX + 109.89, y: bounds.maxY - 34.83), controlPoint1: NSPoint(x: bounds.minX + 113.31, y: bounds.maxY - 34.46), controlPoint2: NSPoint(x: bounds.minX + 111.57, y: bounds.maxY - 34.83))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 119.61, y: bounds.maxY - 34.83))
        logoPath.curve(to: NSPoint(x: bounds.minX + 115.9, y: bounds.maxY - 33.99), controlPoint1: NSPoint(x: bounds.minX + 118.22, y: bounds.maxY - 34.83), controlPoint2: NSPoint(x: bounds.minX + 116.76, y: bounds.maxY - 34.46))
        logoPath.line(to: NSPoint(x: bounds.minX + 116.72, y: bounds.maxY - 32.14))
        logoPath.curve(to: NSPoint(x: bounds.minX + 119.54, y: bounds.maxY - 32.91), controlPoint1: NSPoint(x: bounds.minX + 117.33, y: bounds.maxY - 32.51), controlPoint2: NSPoint(x: bounds.minX + 118.64, y: bounds.maxY - 32.91))
        logoPath.curve(to: NSPoint(x: bounds.minX + 121.71, y: bounds.maxY - 31.28), controlPoint1: NSPoint(x: bounds.minX + 120.85, y: bounds.maxY - 32.91), controlPoint2: NSPoint(x: bounds.minX + 121.71, y: bounds.maxY - 32.27))
        logoPath.curve(to: NSPoint(x: bounds.minX + 119.59, y: bounds.maxY - 29.33), controlPoint1: NSPoint(x: bounds.minX + 121.71, y: bounds.maxY - 30.19), controlPoint2: NSPoint(x: bounds.minX + 120.8, y: bounds.maxY - 29.77))
        logoPath.curve(to: NSPoint(x: bounds.minX + 116.21, y: bounds.maxY - 25.78), controlPoint1: NSPoint(x: bounds.minX + 118, y: bounds.maxY - 28.74), controlPoint2: NSPoint(x: bounds.minX + 116.21, y: bounds.maxY - 28.01))
        logoPath.curve(to: NSPoint(x: bounds.minX + 120.38, y: bounds.maxY - 22.44), controlPoint1: NSPoint(x: bounds.minX + 116.21, y: bounds.maxY - 23.81), controlPoint2: NSPoint(x: bounds.minX + 117.73, y: bounds.maxY - 22.44))
        logoPath.curve(to: NSPoint(x: bounds.minX + 123.85, y: bounds.maxY - 23.28), controlPoint1: NSPoint(x: bounds.minX + 121.82, y: bounds.maxY - 22.44), controlPoint2: NSPoint(x: bounds.minX + 123.01, y: bounds.maxY - 22.79))
        logoPath.line(to: NSPoint(x: bounds.minX + 123.1, y: bounds.maxY - 24.96))
        logoPath.curve(to: NSPoint(x: bounds.minX + 120.65, y: bounds.maxY - 24.25), controlPoint1: NSPoint(x: bounds.minX + 122.57, y: bounds.maxY - 24.63), controlPoint2: NSPoint(x: bounds.minX + 121.51, y: bounds.maxY - 24.25))
        logoPath.curve(to: NSPoint(x: bounds.minX + 118.68, y: bounds.maxY - 25.78), controlPoint1: NSPoint(x: bounds.minX + 119.39, y: bounds.maxY - 24.25), controlPoint2: NSPoint(x: bounds.minX + 118.68, y: bounds.maxY - 24.91))
        logoPath.curve(to: NSPoint(x: bounds.minX + 120.74, y: bounds.maxY - 27.68), controlPoint1: NSPoint(x: bounds.minX + 118.68, y: bounds.maxY - 26.86), controlPoint2: NSPoint(x: bounds.minX + 119.57, y: bounds.maxY - 27.23))
        logoPath.curve(to: NSPoint(x: bounds.minX + 124.23, y: bounds.maxY - 31.3), controlPoint1: NSPoint(x: bounds.minX + 122.39, y: bounds.maxY - 28.29), controlPoint2: NSPoint(x: bounds.minX + 124.23, y: bounds.maxY - 28.98))
        logoPath.curve(to: NSPoint(x: bounds.minX + 119.61, y: bounds.maxY - 34.83), controlPoint1: NSPoint(x: bounds.minX + 124.23, y: bounds.maxY - 33.44), controlPoint2: NSPoint(x: bounds.minX + 122.59, y: bounds.maxY - 34.83))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 135.98, y: bounds.maxY - 28.58))
        logoPath.line(to: NSPoint(x: bounds.minX + 128.07, y: bounds.maxY - 29.69))
        logoPath.curve(to: NSPoint(x: bounds.minX + 131.71, y: bounds.maxY - 32.91), controlPoint1: NSPoint(x: bounds.minX + 128.31, y: bounds.maxY - 31.83), controlPoint2: NSPoint(x: bounds.minX + 129.7, y: bounds.maxY - 32.91))
        logoPath.curve(to: NSPoint(x: bounds.minX + 135.01, y: bounds.maxY - 32.18), controlPoint1: NSPoint(x: bounds.minX + 132.91, y: bounds.maxY - 32.91), controlPoint2: NSPoint(x: bounds.minX + 134.19, y: bounds.maxY - 32.62))
        logoPath.line(to: NSPoint(x: bounds.minX + 135.71, y: bounds.maxY - 33.99))
        logoPath.curve(to: NSPoint(x: bounds.minX + 131.56, y: bounds.maxY - 34.83), controlPoint1: NSPoint(x: bounds.minX + 134.79, y: bounds.maxY - 34.48), controlPoint2: NSPoint(x: bounds.minX + 133.19, y: bounds.maxY - 34.83))
        logoPath.curve(to: NSPoint(x: bounds.minX + 125.71, y: bounds.maxY - 28.63), controlPoint1: NSPoint(x: bounds.minX + 127.8, y: bounds.maxY - 34.83), controlPoint2: NSPoint(x: bounds.minX + 125.71, y: bounds.maxY - 32.43))
        logoPath.curve(to: NSPoint(x: bounds.minX + 131.07, y: bounds.maxY - 22.44), controlPoint1: NSPoint(x: bounds.minX + 125.71, y: bounds.maxY - 24.98), controlPoint2: NSPoint(x: bounds.minX + 127.74, y: bounds.maxY - 22.44))
        logoPath.curve(to: NSPoint(x: bounds.minX + 136, y: bounds.maxY - 27.68), controlPoint1: NSPoint(x: bounds.minX + 134.17, y: bounds.maxY - 22.44), controlPoint2: NSPoint(x: bounds.minX + 136, y: bounds.maxY - 24.47))
        logoPath.curve(to: NSPoint(x: bounds.minX + 135.98, y: bounds.maxY - 28.58), controlPoint1: NSPoint(x: bounds.minX + 136, y: bounds.maxY - 27.96), controlPoint2: NSPoint(x: bounds.minX + 136, y: bounds.maxY - 28.27))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 97.76, y: bounds.maxY - 24.38))
        logoPath.curve(to: NSPoint(x: bounds.minX + 95.86, y: bounds.maxY - 24.78), controlPoint1: NSPoint(x: bounds.minX + 97.1, y: bounds.maxY - 24.38), controlPoint2: NSPoint(x: bounds.minX + 96.33, y: bounds.maxY - 24.54))
        logoPath.line(to: NSPoint(x: bounds.minX + 95.86, y: bounds.maxY - 32.6))
        logoPath.curve(to: NSPoint(x: bounds.minX + 97.59, y: bounds.maxY - 32.91), controlPoint1: NSPoint(x: bounds.minX + 96.22, y: bounds.maxY - 32.76), controlPoint2: NSPoint(x: bounds.minX + 96.9, y: bounds.maxY - 32.91))
        logoPath.curve(to: NSPoint(x: bounds.minX + 100.92, y: bounds.maxY - 28.54), controlPoint1: NSPoint(x: bounds.minX + 99.51, y: bounds.maxY - 32.91), controlPoint2: NSPoint(x: bounds.minX + 100.92, y: bounds.maxY - 31.59))
        logoPath.curve(to: NSPoint(x: bounds.minX + 97.76, y: bounds.maxY - 24.38), controlPoint1: NSPoint(x: bounds.minX + 100.92, y: bounds.maxY - 25.93), controlPoint2: NSPoint(x: bounds.minX + 99.69, y: bounds.maxY - 24.38))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 111.88, y: bounds.maxY - 28.6))
        logoPath.curve(to: NSPoint(x: bounds.minX + 107.02, y: bounds.maxY - 31.06), controlPoint1: NSPoint(x: bounds.minX + 109.45, y: bounds.maxY - 28.74), controlPoint2: NSPoint(x: bounds.minX + 107.02, y: bounds.maxY - 28.94))
        logoPath.curve(to: NSPoint(x: bounds.minX + 109.82, y: bounds.maxY - 33.09), controlPoint1: NSPoint(x: bounds.minX + 107.02, y: bounds.maxY - 32.31), controlPoint2: NSPoint(x: bounds.minX + 107.99, y: bounds.maxY - 33.09))
        logoPath.curve(to: NSPoint(x: bounds.minX + 111.88, y: bounds.maxY - 32.78), controlPoint1: NSPoint(x: bounds.minX + 110.6, y: bounds.maxY - 33.09), controlPoint2: NSPoint(x: bounds.minX + 111.5, y: bounds.maxY - 32.96))
        logoPath.line(to: NSPoint(x: bounds.minX + 111.88, y: bounds.maxY - 28.6))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 131.03, y: bounds.maxY - 24.21))
        logoPath.curve(to: NSPoint(x: bounds.minX + 127.92, y: bounds.maxY - 28.1), controlPoint1: NSPoint(x: bounds.minX + 129.17, y: bounds.maxY - 24.21), controlPoint2: NSPoint(x: bounds.minX + 127.96, y: bounds.maxY - 25.62))
        logoPath.line(to: NSPoint(x: bounds.minX + 133.68, y: bounds.maxY - 27.3))
        logoPath.curve(to: NSPoint(x: bounds.minX + 131.03, y: bounds.maxY - 24.21), controlPoint1: NSPoint(x: bounds.minX + 133.66, y: bounds.maxY - 25.22), controlPoint2: NSPoint(x: bounds.minX + 132.62, y: bounds.maxY - 24.21))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 69.36, y: bounds.maxY - 24.36))
        logoPath.curve(to: NSPoint(x: bounds.minX + 66.55, y: bounds.maxY - 28.6), controlPoint1: NSPoint(x: bounds.minX + 67.48, y: bounds.maxY - 24.36), controlPoint2: NSPoint(x: bounds.minX + 66.55, y: bounds.maxY - 26.04))
        logoPath.curve(to: NSPoint(x: bounds.minX + 69.36, y: bounds.maxY - 32.87), controlPoint1: NSPoint(x: bounds.minX + 66.55, y: bounds.maxY - 31.17), controlPoint2: NSPoint(x: bounds.minX + 67.48, y: bounds.maxY - 32.87))
        logoPath.curve(to: NSPoint(x: bounds.minX + 72.16, y: bounds.maxY - 28.6), controlPoint1: NSPoint(x: bounds.minX + 71.24, y: bounds.maxY - 32.87), controlPoint2: NSPoint(x: bounds.minX + 72.16, y: bounds.maxY - 31.17))
        logoPath.curve(to: NSPoint(x: bounds.minX + 69.36, y: bounds.maxY - 24.36), controlPoint1: NSPoint(x: bounds.minX + 72.16, y: bounds.maxY - 26.04), controlPoint2: NSPoint(x: bounds.minX + 71.24, y: bounds.maxY - 24.36))
        logoPath.close()
        logoPath.windingRule = .evenOddWindingRule
        logoWhite.setFill()
        logoPath.fill()
    }
    
    public static func drawGdaxButton(_ bounds: NSRect = NSRect(x: 0, y: 0, width: 191, height: 56), original: Bool = true, hover: Bool = false, pressed: Bool = false) {
        //// General Declarations
        let context = NSGraphicsContext.current!.cgContext
        
        //// Color Declarations
        let highlightGradientColor = NSColor(deviceRed: 1, green: 1, blue: 1, alpha: 0.09)
        let highlightGradientColor2 = NSColor(deviceRed: 1, green: 1, blue: 1, alpha: 0)
        let shadow2Color = NSColor(deviceRed: 1, green: 1, blue: 1, alpha: 0.36)
        let logoWhite = NSColor(deviceRed: 1, green: 1, blue: 1, alpha: 1)
        let gdaxBackground = NSColor(deviceRed: 0.137, green: 0.184, blue: 0.247, alpha: 1)
        let gdaxLogoBackground = NSColor(deviceRed: 0.318, green: 0.553, blue: 0.792, alpha: 1)
        
        //// Gradient Declarations
        let highlightGradient = NSGradient(starting: highlightGradientColor, ending: highlightGradientColor2)!
        
        //// Shadow Declarations
        let outerShadow = NSShadow()
        outerShadow.shadowColor = NSColor.black
        outerShadow.shadowOffset = NSSize(width: 0, height: 0)
        outerShadow.shadowBlurRadius = 0.5
        let innerStroke = NSShadow()
        innerStroke.shadowColor = shadow2Color
        innerStroke.shadowOffset = NSSize(width: 0, height: 0)
        innerStroke.shadowBlurRadius = 0.5
        
        if (original) {
            //// gdax
            NSGraphicsContext.saveGraphicsState()
            context.translateBy(x: bounds.minX + 95.5, y: bounds.maxY - 28)
            
            outerShadow.set()
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            
            
            //// gdaxBase Drawing
            let gdaxBasePath = NSBezierPath(roundedRect: NSRect(x: -88.5, y: -21, width: 177, height: 42), xRadius: 5, yRadius: 5)
            gdaxBackground.setFill()
            gdaxBasePath.fill()
            
            
            //// gdaxHighlight Drawing
            let gdaxHighlightPath = NSBezierPath(roundedRect: NSRect(x: -88.5, y: -21, width: 177, height: 42), xRadius: 5, yRadius: 5)
            highlightGradient.draw(in: gdaxHighlightPath, angle: -45)
            
            ////// gdaxHighlight Inner Shadow
            NSGraphicsContext.saveGraphicsState()
            gdaxHighlightPath.bounds.clip()
            context.setShadow(offset: NSSize.zero, blur: 0, color: nil)
            
            context.setAlpha(innerStroke.shadowColor!.alphaComponent)
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            let gdaxHighlightOpaqueShadow = NSShadow()
            gdaxHighlightOpaqueShadow.shadowColor = innerStroke.shadowColor!.withAlphaComponent(1)
            gdaxHighlightOpaqueShadow.shadowOffset = innerStroke.shadowOffset
            gdaxHighlightOpaqueShadow.shadowBlurRadius = innerStroke.shadowBlurRadius
            gdaxHighlightOpaqueShadow.set()
            
            context.setBlendMode(.sourceOut)
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            
            gdaxHighlightOpaqueShadow.shadowColor!.setFill()
            gdaxHighlightPath.fill()
            
            context.endTransparencyLayer()
            context.endTransparencyLayer()
            NSGraphicsContext.restoreGraphicsState()
            
            
            
            context.endTransparencyLayer()
            
            NSGraphicsContext.restoreGraphicsState()
        }
        
        
        if (hover) {
            //// gdaxHover
            NSGraphicsContext.saveGraphicsState()
            context.translateBy(x: bounds.minX + 95.5, y: bounds.maxY - 28)
            context.scaleBy(x: 1.05, y: 1.05)
            
            outerShadow.set()
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            
            
            //// gdaxBase 2 Drawing
            let gdaxBase2Path = NSBezierPath(roundedRect: NSRect(x: -88.5, y: -21, width: 177, height: 42), xRadius: 5, yRadius: 5)
            gdaxBackground.setFill()
            gdaxBase2Path.fill()
            
            
            //// gdaxHighlight 2 Drawing
            let gdaxHighlight2Path = NSBezierPath(roundedRect: NSRect(x: -88.5, y: -21, width: 177, height: 42), xRadius: 5, yRadius: 5)
            highlightGradient.draw(in: gdaxHighlight2Path, angle: -45)
            
            ////// gdaxHighlight 2 Inner Shadow
            NSGraphicsContext.saveGraphicsState()
            gdaxHighlight2Path.bounds.clip()
            context.setShadow(offset: NSSize.zero, blur: 0, color: nil)
            
            context.setAlpha(innerStroke.shadowColor!.alphaComponent)
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            let gdaxHighlight2OpaqueShadow = NSShadow()
            gdaxHighlight2OpaqueShadow.shadowColor = innerStroke.shadowColor!.withAlphaComponent(1)
            gdaxHighlight2OpaqueShadow.shadowOffset = innerStroke.shadowOffset
            gdaxHighlight2OpaqueShadow.shadowBlurRadius = innerStroke.shadowBlurRadius
            gdaxHighlight2OpaqueShadow.set()
            
            context.setBlendMode(.sourceOut)
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            
            gdaxHighlight2OpaqueShadow.shadowColor!.setFill()
            gdaxHighlight2Path.fill()
            
            context.endTransparencyLayer()
            context.endTransparencyLayer()
            NSGraphicsContext.restoreGraphicsState()
            
            
            
            context.endTransparencyLayer()
            
            NSGraphicsContext.restoreGraphicsState()
        }
        
        
        if (pressed) {
            //// gdaxPressed
            NSGraphicsContext.saveGraphicsState()
            context.translateBy(x: bounds.minX + 95.5, y: bounds.maxY - 28)
            
            outerShadow.set()
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            
            
            //// gdaxBase 3 Drawing
            let gdaxBase3Path = NSBezierPath(roundedRect: NSRect(x: -88.5, y: -21, width: 177, height: 42), xRadius: 5, yRadius: 5)
            gdaxBackground.setFill()
            gdaxBase3Path.fill()
            
            
            //// gdaxHighlight 3 Drawing
            let gdaxHighlight3Path = NSBezierPath(roundedRect: NSRect(x: -88.5, y: -21, width: 177, height: 42), xRadius: 5, yRadius: 5)
            highlightGradient.draw(in: gdaxHighlight3Path, angle: -45)
            
            ////// gdaxHighlight 3 Inner Shadow
            NSGraphicsContext.saveGraphicsState()
            gdaxHighlight3Path.bounds.clip()
            context.setShadow(offset: NSSize.zero, blur: 0, color: nil)
            
            context.setAlpha(innerStroke.shadowColor!.alphaComponent)
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            let gdaxHighlight3OpaqueShadow = NSShadow()
            gdaxHighlight3OpaqueShadow.shadowColor = innerStroke.shadowColor!.withAlphaComponent(1)
            gdaxHighlight3OpaqueShadow.shadowOffset = innerStroke.shadowOffset
            gdaxHighlight3OpaqueShadow.shadowBlurRadius = innerStroke.shadowBlurRadius
            gdaxHighlight3OpaqueShadow.set()
            
            context.setBlendMode(.sourceOut)
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            
            gdaxHighlight3OpaqueShadow.shadowColor!.setFill()
            gdaxHighlight3Path.fill()
            
            context.endTransparencyLayer()
            context.endTransparencyLayer()
            NSGraphicsContext.restoreGraphicsState()
            
            
            
            context.endTransparencyLayer()
            
            NSGraphicsContext.restoreGraphicsState()
        }
        
        
        //// gdaxLogo
        //// Combined-Shape Drawing
        let combinedShapePath = NSBezierPath()
        combinedShapePath.move(to: NSPoint(x: bounds.minX + 83.65, y: bounds.maxY - 34.8))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 80.48, y: bounds.maxY - 34.48), controlPoint1: NSPoint(x: bounds.minX + 82.4, y: bounds.maxY - 34.8), controlPoint2: NSPoint(x: bounds.minX + 81.33, y: bounds.maxY - 34.69))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 78.4, y: bounds.maxY - 33.45), controlPoint1: NSPoint(x: bounds.minX + 79.63, y: bounds.maxY - 34.28), controlPoint2: NSPoint(x: bounds.minX + 78.93, y: bounds.maxY - 33.93))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 77.26, y: bounds.maxY - 31.57), controlPoint1: NSPoint(x: bounds.minX + 77.86, y: bounds.maxY - 32.97), controlPoint2: NSPoint(x: bounds.minX + 77.5, y: bounds.maxY - 32.35))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 76.91, y: bounds.maxY - 28.7), controlPoint1: NSPoint(x: bounds.minX + 77.02, y: bounds.maxY - 30.8), controlPoint2: NSPoint(x: bounds.minX + 76.91, y: bounds.maxY - 29.82))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 76.91, y: bounds.maxY - 26.74))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 77.26, y: bounds.maxY - 23.94), controlPoint1: NSPoint(x: bounds.minX + 76.91, y: bounds.maxY - 25.66), controlPoint2: NSPoint(x: bounds.minX + 77.02, y: bounds.maxY - 24.73))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 78.45, y: bounds.maxY - 22.03), controlPoint1: NSPoint(x: bounds.minX + 77.5, y: bounds.maxY - 23.17), controlPoint2: NSPoint(x: bounds.minX + 77.9, y: bounds.maxY - 22.52))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 80.65, y: bounds.maxY - 20.94), controlPoint1: NSPoint(x: bounds.minX + 79.01, y: bounds.maxY - 21.53), controlPoint2: NSPoint(x: bounds.minX + 79.74, y: bounds.maxY - 21.16))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 84.02, y: bounds.maxY - 20.59), controlPoint1: NSPoint(x: bounds.minX + 81.55, y: bounds.maxY - 20.7), controlPoint2: NSPoint(x: bounds.minX + 82.67, y: bounds.maxY - 20.59))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 86.3, y: bounds.maxY - 20.59))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 87.39, y: bounds.maxY - 20.61), controlPoint1: NSPoint(x: bounds.minX + 86.65, y: bounds.maxY - 20.59), controlPoint2: NSPoint(x: bounds.minX + 87.02, y: bounds.maxY - 20.59))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 88.66, y: bounds.maxY - 20.64), controlPoint1: NSPoint(x: bounds.minX + 87.76, y: bounds.maxY - 20.61), controlPoint2: NSPoint(x: bounds.minX + 88.18, y: bounds.maxY - 20.63))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 88.09, y: bounds.maxY - 23.91))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 86.4, y: bounds.maxY - 23.87), controlPoint1: NSPoint(x: bounds.minX + 87.43, y: bounds.maxY - 23.89), controlPoint2: NSPoint(x: bounds.minX + 86.86, y: bounds.maxY - 23.89))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 85.2, y: bounds.maxY - 23.85), controlPoint1: NSPoint(x: bounds.minX + 85.92, y: bounds.maxY - 23.87), controlPoint2: NSPoint(x: bounds.minX + 85.53, y: bounds.maxY - 23.85))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 83.8, y: bounds.maxY - 23.85))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 82.36, y: bounds.maxY - 23.96), controlPoint1: NSPoint(x: bounds.minX + 83.21, y: bounds.maxY - 23.85), controlPoint2: NSPoint(x: bounds.minX + 82.73, y: bounds.maxY - 23.89))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 81.49, y: bounds.maxY - 24.38), controlPoint1: NSPoint(x: bounds.minX + 81.99, y: bounds.maxY - 24.03), controlPoint2: NSPoint(x: bounds.minX + 81.7, y: bounds.maxY - 24.18))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 81.05, y: bounds.maxY - 25.27), controlPoint1: NSPoint(x: bounds.minX + 81.27, y: bounds.maxY - 24.61), controlPoint2: NSPoint(x: bounds.minX + 81.13, y: bounds.maxY - 24.9))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 80.92, y: bounds.maxY - 26.73), controlPoint1: NSPoint(x: bounds.minX + 80.96, y: bounds.maxY - 25.64), controlPoint2: NSPoint(x: bounds.minX + 80.92, y: bounds.maxY - 26.14))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 80.92, y: bounds.maxY - 28.64))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 81.05, y: bounds.maxY - 30.1), controlPoint1: NSPoint(x: bounds.minX + 80.92, y: bounds.maxY - 29.23), controlPoint2: NSPoint(x: bounds.minX + 80.96, y: bounds.maxY - 29.73))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 81.48, y: bounds.maxY - 30.98), controlPoint1: NSPoint(x: bounds.minX + 81.14, y: bounds.maxY - 30.47), controlPoint2: NSPoint(x: bounds.minX + 81.27, y: bounds.maxY - 30.76))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 82.29, y: bounds.maxY - 31.41), controlPoint1: NSPoint(x: bounds.minX + 81.68, y: bounds.maxY - 31.2), controlPoint2: NSPoint(x: bounds.minX + 81.94, y: bounds.maxY - 31.33))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 83.58, y: bounds.maxY - 31.52), controlPoint1: NSPoint(x: bounds.minX + 82.62, y: bounds.maxY - 31.48), controlPoint2: NSPoint(x: bounds.minX + 83.06, y: bounds.maxY - 31.52))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 85.35, y: bounds.maxY - 31.52))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 85.35, y: bounds.maxY - 29.49))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 83.32, y: bounds.maxY - 29.49))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 83.87, y: bounds.maxY - 26.56))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 89.09, y: bounds.maxY - 26.56))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 89.09, y: bounds.maxY - 32.57))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 88.53, y: bounds.maxY - 34.28), controlPoint1: NSPoint(x: bounds.minX + 89.09, y: bounds.maxY - 33.38), controlPoint2: NSPoint(x: bounds.minX + 88.9, y: bounds.maxY - 33.95))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 86.73, y: bounds.maxY - 34.8), controlPoint1: NSPoint(x: bounds.minX + 88.17, y: bounds.maxY - 34.61), controlPoint2: NSPoint(x: bounds.minX + 87.58, y: bounds.maxY - 34.8))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 83.65, y: bounds.maxY - 34.8))
        combinedShapePath.close()
        combinedShapePath.move(to: NSPoint(x: bounds.minX + 90.56, y: bounds.maxY - 20.64))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 96.75, y: bounds.maxY - 20.64))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 99.85, y: bounds.maxY - 21.01), controlPoint1: NSPoint(x: bounds.minX + 98.01, y: bounds.maxY - 20.64), controlPoint2: NSPoint(x: bounds.minX + 99.02, y: bounds.maxY - 20.77))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 101.8, y: bounds.maxY - 22.16), controlPoint1: NSPoint(x: bounds.minX + 100.66, y: bounds.maxY - 21.27), controlPoint2: NSPoint(x: bounds.minX + 101.3, y: bounds.maxY - 21.64))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 102.82, y: bounds.maxY - 24.09), controlPoint1: NSPoint(x: bounds.minX + 102.28, y: bounds.maxY - 22.67), controlPoint2: NSPoint(x: bounds.minX + 102.63, y: bounds.maxY - 23.32))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 103.11, y: bounds.maxY - 26.82), controlPoint1: NSPoint(x: bounds.minX + 103, y: bounds.maxY - 24.86), controlPoint2: NSPoint(x: bounds.minX + 103.11, y: bounds.maxY - 25.77))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 103.11, y: bounds.maxY - 28.59))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 102.82, y: bounds.maxY - 31.24), controlPoint1: NSPoint(x: bounds.minX + 103.11, y: bounds.maxY - 29.58), controlPoint2: NSPoint(x: bounds.minX + 103.02, y: bounds.maxY - 30.47))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 101.8, y: bounds.maxY - 33.19), controlPoint1: NSPoint(x: bounds.minX + 102.61, y: bounds.maxY - 32.01), controlPoint2: NSPoint(x: bounds.minX + 102.28, y: bounds.maxY - 32.66))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 99.89, y: bounds.maxY - 34.39), controlPoint1: NSPoint(x: bounds.minX + 101.32, y: bounds.maxY - 33.71), controlPoint2: NSPoint(x: bounds.minX + 100.68, y: bounds.maxY - 34.11))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 96.88, y: bounds.maxY - 34.8), controlPoint1: NSPoint(x: bounds.minX + 99.08, y: bounds.maxY - 34.67), controlPoint2: NSPoint(x: bounds.minX + 98.08, y: bounds.maxY - 34.8))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 90.58, y: bounds.maxY - 34.8))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 90.58, y: bounds.maxY - 20.64))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 90.56, y: bounds.maxY - 20.64))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 90.56, y: bounds.maxY - 20.64))
        combinedShapePath.close()
        combinedShapePath.move(to: NSPoint(x: bounds.minX + 94.36, y: bounds.maxY - 31.53))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 96.37, y: bounds.maxY - 31.53))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 97.66, y: bounds.maxY - 31.41), controlPoint1: NSPoint(x: bounds.minX + 96.88, y: bounds.maxY - 31.53), controlPoint2: NSPoint(x: bounds.minX + 97.31, y: bounds.maxY - 31.5))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 98.5, y: bounds.maxY - 30.95), controlPoint1: NSPoint(x: bounds.minX + 98.01, y: bounds.maxY - 31.31), controlPoint2: NSPoint(x: bounds.minX + 98.28, y: bounds.maxY - 31.17))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 98.96, y: bounds.maxY - 30.02), controlPoint1: NSPoint(x: bounds.minX + 98.72, y: bounds.maxY - 30.72), controlPoint2: NSPoint(x: bounds.minX + 98.87, y: bounds.maxY - 30.43))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 99.11, y: bounds.maxY - 28.55), controlPoint1: NSPoint(x: bounds.minX + 99.06, y: bounds.maxY - 29.64), controlPoint2: NSPoint(x: bounds.minX + 99.11, y: bounds.maxY - 29.14))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 99.11, y: bounds.maxY - 26.85))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 98.96, y: bounds.maxY - 25.38), controlPoint1: NSPoint(x: bounds.minX + 99.11, y: bounds.maxY - 26.26), controlPoint2: NSPoint(x: bounds.minX + 99.06, y: bounds.maxY - 25.77))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 98.5, y: bounds.maxY - 24.48), controlPoint1: NSPoint(x: bounds.minX + 98.87, y: bounds.maxY - 24.99), controlPoint2: NSPoint(x: bounds.minX + 98.72, y: bounds.maxY - 24.7))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 97.66, y: bounds.maxY - 24.02), controlPoint1: NSPoint(x: bounds.minX + 98.28, y: bounds.maxY - 24.26), controlPoint2: NSPoint(x: bounds.minX + 98.01, y: bounds.maxY - 24.11))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 96.37, y: bounds.maxY - 23.89), controlPoint1: NSPoint(x: bounds.minX + 97.31, y: bounds.maxY - 23.92), controlPoint2: NSPoint(x: bounds.minX + 96.88, y: bounds.maxY - 23.89))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 94.36, y: bounds.maxY - 23.89))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 94.36, y: bounds.maxY - 31.53))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 94.36, y: bounds.maxY - 31.53))
        combinedShapePath.close()
        combinedShapePath.move(to: NSPoint(x: bounds.minX + 124.67, y: bounds.maxY - 26.87))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 122.7, y: bounds.maxY - 23.94))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 124.65, y: bounds.maxY - 20.64))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 128.86, y: bounds.maxY - 20.64))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 124.67, y: bounds.maxY - 26.87))
        combinedShapePath.close()
        combinedShapePath.move(to: NSPoint(x: bounds.minX + 115.59, y: bounds.maxY - 20.64))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 119.36, y: bounds.maxY - 20.64))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 123.86, y: bounds.maxY - 27.28))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 118.77, y: bounds.maxY - 34.8))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 113.01, y: bounds.maxY - 34.8))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 112.03, y: bounds.maxY - 31.7))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 107.31, y: bounds.maxY - 31.7))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 106.35, y: bounds.maxY - 34.8))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 102.48, y: bounds.maxY - 34.8))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 107.44, y: bounds.maxY - 20.64))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 112.09, y: bounds.maxY - 20.64))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 116.36, y: bounds.maxY - 32.82))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 120.05, y: bounds.maxY - 27.28))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 115.59, y: bounds.maxY - 20.64))
        combinedShapePath.close()
        combinedShapePath.move(to: NSPoint(x: bounds.minX + 108.16, y: bounds.maxY - 28.73))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 108.16, y: bounds.maxY - 28.73))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 111.15, y: bounds.maxY - 28.73))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 109.65, y: bounds.maxY - 23.94))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 108.16, y: bounds.maxY - 28.73))
        combinedShapePath.close()
        combinedShapePath.move(to: NSPoint(x: bounds.minX + 124.67, y: bounds.maxY - 27.68))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 129.41, y: bounds.maxY - 34.8))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 124.99, y: bounds.maxY - 34.8))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 122.57, y: bounds.maxY - 30.78))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 124.67, y: bounds.maxY - 27.68))
        combinedShapePath.close()
        logoWhite.setFill()
        combinedShapePath.fill()
        
        
        //// Shape Drawing
        let shapePath = NSBezierPath()
        shapePath.move(to: NSPoint(x: bounds.minX + 70.25, y: bounds.maxY - 20.64))
        shapePath.line(to: NSPoint(x: bounds.minX + 72.81, y: bounds.maxY - 20.64))
        shapePath.line(to: NSPoint(x: bounds.minX + 72.81, y: bounds.maxY - 34.8))
        shapePath.line(to: NSPoint(x: bounds.minX + 70.25, y: bounds.maxY - 34.8))
        shapePath.line(to: NSPoint(x: bounds.minX + 70.25, y: bounds.maxY - 20.64))
        shapePath.close()
        shapePath.move(to: NSPoint(x: bounds.minX + 61.5, y: bounds.maxY - 20.64))
        shapePath.line(to: NSPoint(x: bounds.minX + 64.06, y: bounds.maxY - 20.64))
        shapePath.line(to: NSPoint(x: bounds.minX + 64.06, y: bounds.maxY - 34.8))
        shapePath.line(to: NSPoint(x: bounds.minX + 61.5, y: bounds.maxY - 34.8))
        shapePath.line(to: NSPoint(x: bounds.minX + 61.5, y: bounds.maxY - 20.64))
        shapePath.close()
        shapePath.move(to: NSPoint(x: bounds.minX + 65.89, y: bounds.maxY - 16))
        shapePath.line(to: NSPoint(x: bounds.minX + 68.45, y: bounds.maxY - 16))
        shapePath.line(to: NSPoint(x: bounds.minX + 68.45, y: bounds.maxY - 39.42))
        shapePath.line(to: NSPoint(x: bounds.minX + 65.89, y: bounds.maxY - 39.42))
        shapePath.line(to: NSPoint(x: bounds.minX + 65.89, y: bounds.maxY - 16))
        shapePath.close()
        gdaxLogoBackground.setFill()
        shapePath.fill()
        
        
        
        
        //// Group- 8
    }
    
    public static func drawPoloniexButton(_ bounds: NSRect = NSRect(x: 0, y: 0, width: 191, height: 56), original: Bool = true, hover: Bool = false, pressed: Bool = false) {
        //// General Declarations
        let context = NSGraphicsContext.current!.cgContext
        
        //// Color Declarations
        let highlightGradientColor = NSColor(deviceRed: 1, green: 1, blue: 1, alpha: 0.09)
        let highlightGradientColor2 = NSColor(deviceRed: 1, green: 1, blue: 1, alpha: 0)
        let shadow2Color = NSColor(deviceRed: 1, green: 1, blue: 1, alpha: 0.36)
        let logoWhite = NSColor(deviceRed: 1, green: 1, blue: 1, alpha: 1)
        let poloniexBackground = NSColor(deviceRed: 0.031, green: 0.38, blue: 0.4, alpha: 1)
        
        //// Gradient Declarations
        let highlightGradient = NSGradient(starting: highlightGradientColor, ending: highlightGradientColor2)!
        
        //// Shadow Declarations
        let outerShadow = NSShadow()
        outerShadow.shadowColor = NSColor.black
        outerShadow.shadowOffset = NSSize(width: 0, height: 0)
        outerShadow.shadowBlurRadius = 0.5
        let innerStroke = NSShadow()
        innerStroke.shadowColor = shadow2Color
        innerStroke.shadowOffset = NSSize(width: 0, height: 0)
        innerStroke.shadowBlurRadius = 0.5
        
        if (original) {
            //// poloniex
            NSGraphicsContext.saveGraphicsState()
            context.translateBy(x: bounds.minX + 95.5, y: bounds.maxY - 28)
            
            outerShadow.set()
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            
            
            //// poloniexBase Drawing
            let poloniexBasePath = NSBezierPath(roundedRect: NSRect(x: -88.5, y: -21, width: 177, height: 42), xRadius: 5, yRadius: 5)
            poloniexBackground.setFill()
            poloniexBasePath.fill()
            
            
            //// poloniexHighlight Drawing
            let poloniexHighlightPath = NSBezierPath(roundedRect: NSRect(x: -88.5, y: -21, width: 177, height: 42), xRadius: 5, yRadius: 5)
            highlightGradient.draw(in: poloniexHighlightPath, angle: -45)
            
            ////// poloniexHighlight Inner Shadow
            NSGraphicsContext.saveGraphicsState()
            poloniexHighlightPath.bounds.clip()
            context.setShadow(offset: NSSize.zero, blur: 0, color: nil)
            
            context.setAlpha(innerStroke.shadowColor!.alphaComponent)
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            let poloniexHighlightOpaqueShadow = NSShadow()
            poloniexHighlightOpaqueShadow.shadowColor = innerStroke.shadowColor!.withAlphaComponent(1)
            poloniexHighlightOpaqueShadow.shadowOffset = innerStroke.shadowOffset
            poloniexHighlightOpaqueShadow.shadowBlurRadius = innerStroke.shadowBlurRadius
            poloniexHighlightOpaqueShadow.set()
            
            context.setBlendMode(.sourceOut)
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            
            poloniexHighlightOpaqueShadow.shadowColor!.setFill()
            poloniexHighlightPath.fill()
            
            context.endTransparencyLayer()
            context.endTransparencyLayer()
            NSGraphicsContext.restoreGraphicsState()
            
            
            
            context.endTransparencyLayer()
            
            NSGraphicsContext.restoreGraphicsState()
        }
        
        
        if (hover) {
            //// poloniexHover
            NSGraphicsContext.saveGraphicsState()
            context.translateBy(x: bounds.minX + 95.5, y: bounds.maxY - 28)
            context.scaleBy(x: 1.05, y: 1.05)
            
            outerShadow.set()
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            
            
            //// poloniexBase 2 Drawing
            let poloniexBase2Path = NSBezierPath(roundedRect: NSRect(x: -88.5, y: -21, width: 177, height: 42), xRadius: 5, yRadius: 5)
            poloniexBackground.setFill()
            poloniexBase2Path.fill()
            
            
            //// poloniexHighlight 2 Drawing
            let poloniexHighlight2Path = NSBezierPath(roundedRect: NSRect(x: -88.5, y: -21, width: 177, height: 42), xRadius: 5, yRadius: 5)
            highlightGradient.draw(in: poloniexHighlight2Path, angle: -45)
            
            ////// poloniexHighlight 2 Inner Shadow
            NSGraphicsContext.saveGraphicsState()
            poloniexHighlight2Path.bounds.clip()
            context.setShadow(offset: NSSize.zero, blur: 0, color: nil)
            
            context.setAlpha(innerStroke.shadowColor!.alphaComponent)
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            let poloniexHighlight2OpaqueShadow = NSShadow()
            poloniexHighlight2OpaqueShadow.shadowColor = innerStroke.shadowColor!.withAlphaComponent(1)
            poloniexHighlight2OpaqueShadow.shadowOffset = innerStroke.shadowOffset
            poloniexHighlight2OpaqueShadow.shadowBlurRadius = innerStroke.shadowBlurRadius
            poloniexHighlight2OpaqueShadow.set()
            
            context.setBlendMode(.sourceOut)
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            
            poloniexHighlight2OpaqueShadow.shadowColor!.setFill()
            poloniexHighlight2Path.fill()
            
            context.endTransparencyLayer()
            context.endTransparencyLayer()
            NSGraphicsContext.restoreGraphicsState()
            
            
            
            context.endTransparencyLayer()
            
            NSGraphicsContext.restoreGraphicsState()
        }
        
        
        if (pressed) {
            //// poloniexPressed
            NSGraphicsContext.saveGraphicsState()
            context.translateBy(x: bounds.minX + 95.5, y: bounds.maxY - 28)
            
            outerShadow.set()
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            
            
            //// poloniexBase 3 Drawing
            let poloniexBase3Path = NSBezierPath(roundedRect: NSRect(x: -88.5, y: -21, width: 177, height: 42), xRadius: 5, yRadius: 5)
            poloniexBackground.setFill()
            poloniexBase3Path.fill()
            
            
            //// poloniexHighlight 3 Drawing
            let poloniexHighlight3Path = NSBezierPath(roundedRect: NSRect(x: -88.5, y: -21, width: 177, height: 42), xRadius: 5, yRadius: 5)
            highlightGradient.draw(in: poloniexHighlight3Path, angle: -45)
            
            ////// poloniexHighlight 3 Inner Shadow
            NSGraphicsContext.saveGraphicsState()
            poloniexHighlight3Path.bounds.clip()
            context.setShadow(offset: NSSize.zero, blur: 0, color: nil)
            
            context.setAlpha(innerStroke.shadowColor!.alphaComponent)
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            let poloniexHighlight3OpaqueShadow = NSShadow()
            poloniexHighlight3OpaqueShadow.shadowColor = innerStroke.shadowColor!.withAlphaComponent(1)
            poloniexHighlight3OpaqueShadow.shadowOffset = innerStroke.shadowOffset
            poloniexHighlight3OpaqueShadow.shadowBlurRadius = innerStroke.shadowBlurRadius
            poloniexHighlight3OpaqueShadow.set()
            
            context.setBlendMode(.sourceOut)
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            
            poloniexHighlight3OpaqueShadow.shadowColor!.setFill()
            poloniexHighlight3Path.fill()
            
            context.endTransparencyLayer()
            context.endTransparencyLayer()
            NSGraphicsContext.restoreGraphicsState()
            
            
            
            context.endTransparencyLayer()
            
            NSGraphicsContext.restoreGraphicsState()
        }
        
        
        //// poloniexLogo
        //// logo Drawing
        let logoPath = NSBezierPath()
        logoPath.move(to: NSPoint(x: bounds.minX + 135.7, y: bounds.maxY - 26.59))
        logoPath.line(to: NSPoint(x: bounds.minX + 133.68, y: bounds.maxY - 23.63))
        logoPath.line(to: NSPoint(x: bounds.minX + 135.37, y: bounds.maxY - 21.15))
        logoPath.line(to: NSPoint(x: bounds.minX + 139.3, y: bounds.maxY - 21.15))
        logoPath.line(to: NSPoint(x: bounds.minX + 135.7, y: bounds.maxY - 26.59))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 135.69, y: bounds.maxY - 29.11))
        logoPath.line(to: NSPoint(x: bounds.minX + 139.5, y: bounds.maxY - 34.58))
        logoPath.line(to: NSPoint(x: bounds.minX + 135.58, y: bounds.maxY - 34.58))
        logoPath.line(to: NSPoint(x: bounds.minX + 133.68, y: bounds.maxY - 31.92))
        logoPath.line(to: NSPoint(x: bounds.minX + 135.69, y: bounds.maxY - 29.11))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 58.53, y: bounds.maxY - 21.15))
        logoPath.curve(to: NSPoint(x: bounds.minX + 61.4, y: bounds.maxY - 22.14), controlPoint1: NSPoint(x: bounds.minX + 59.84, y: bounds.maxY - 21.15), controlPoint2: NSPoint(x: bounds.minX + 60.79, y: bounds.maxY - 21.48))
        logoPath.curve(to: NSPoint(x: bounds.minX + 62.32, y: bounds.maxY - 25.5), controlPoint1: NSPoint(x: bounds.minX + 62.02, y: bounds.maxY - 22.79), controlPoint2: NSPoint(x: bounds.minX + 62.32, y: bounds.maxY - 24.2))
        logoPath.curve(to: NSPoint(x: bounds.minX + 61.37, y: bounds.maxY - 29.07), controlPoint1: NSPoint(x: bounds.minX + 62.32, y: bounds.maxY - 26.83), controlPoint2: NSPoint(x: bounds.minX + 62, y: bounds.maxY - 28.41))
        logoPath.curve(to: NSPoint(x: bounds.minX + 58.53, y: bounds.maxY - 30.05), controlPoint1: NSPoint(x: bounds.minX + 60.73, y: bounds.maxY - 29.72), controlPoint2: NSPoint(x: bounds.minX + 59.78, y: bounds.maxY - 30.05))
        logoPath.line(to: NSPoint(x: bounds.minX + 54.52, y: bounds.maxY - 30.05))
        logoPath.line(to: NSPoint(x: bounds.minX + 54.52, y: bounds.maxY - 34.58))
        logoPath.line(to: NSPoint(x: bounds.minX + 51.5, y: bounds.maxY - 34.58))
        logoPath.line(to: NSPoint(x: bounds.minX + 51.5, y: bounds.maxY - 21.15))
        logoPath.line(to: NSPoint(x: bounds.minX + 58.53, y: bounds.maxY - 21.15))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 63.33, y: bounds.maxY - 25.58))
        logoPath.curve(to: NSPoint(x: bounds.minX + 63.62, y: bounds.maxY - 23.49), controlPoint1: NSPoint(x: bounds.minX + 63.33, y: bounds.maxY - 24.77), controlPoint2: NSPoint(x: bounds.minX + 63.42, y: bounds.maxY - 24.07))
        logoPath.curve(to: NSPoint(x: bounds.minX + 64.53, y: bounds.maxY - 22.07), controlPoint1: NSPoint(x: bounds.minX + 63.82, y: bounds.maxY - 22.91), controlPoint2: NSPoint(x: bounds.minX + 64.12, y: bounds.maxY - 22.43))
        logoPath.curve(to: NSPoint(x: bounds.minX + 66.11, y: bounds.maxY - 21.26), controlPoint1: NSPoint(x: bounds.minX + 64.94, y: bounds.maxY - 21.7), controlPoint2: NSPoint(x: bounds.minX + 65.47, y: bounds.maxY - 21.43))
        logoPath.curve(to: NSPoint(x: bounds.minX + 68.4, y: bounds.maxY - 21), controlPoint1: NSPoint(x: bounds.minX + 66.75, y: bounds.maxY - 21.09), controlPoint2: NSPoint(x: bounds.minX + 67.51, y: bounds.maxY - 21))
        logoPath.line(to: NSPoint(x: bounds.minX + 69.84, y: bounds.maxY - 21))
        logoPath.curve(to: NSPoint(x: bounds.minX + 72.14, y: bounds.maxY - 21.25), controlPoint1: NSPoint(x: bounds.minX + 70.73, y: bounds.maxY - 21), controlPoint2: NSPoint(x: bounds.minX + 71.5, y: bounds.maxY - 21.08))
        logoPath.curve(to: NSPoint(x: bounds.minX + 73.71, y: bounds.maxY - 22.05), controlPoint1: NSPoint(x: bounds.minX + 72.78, y: bounds.maxY - 21.42), controlPoint2: NSPoint(x: bounds.minX + 73.3, y: bounds.maxY - 21.69))
        logoPath.curve(to: NSPoint(x: bounds.minX + 74.61, y: bounds.maxY - 23.48), controlPoint1: NSPoint(x: bounds.minX + 74.12, y: bounds.maxY - 22.42), controlPoint2: NSPoint(x: bounds.minX + 74.42, y: bounds.maxY - 22.89))
        logoPath.curve(to: NSPoint(x: bounds.minX + 74.9, y: bounds.maxY - 25.58), controlPoint1: NSPoint(x: bounds.minX + 74.8, y: bounds.maxY - 24.06), controlPoint2: NSPoint(x: bounds.minX + 74.9, y: bounds.maxY - 24.76))
        logoPath.line(to: NSPoint(x: bounds.minX + 74.9, y: bounds.maxY - 29.78))
        logoPath.curve(to: NSPoint(x: bounds.minX + 74.61, y: bounds.maxY - 32.25), controlPoint1: NSPoint(x: bounds.minX + 74.9, y: bounds.maxY - 30.6), controlPoint2: NSPoint(x: bounds.minX + 74.8, y: bounds.maxY - 31.67))
        logoPath.curve(to: NSPoint(x: bounds.minX + 73.7, y: bounds.maxY - 33.67), controlPoint1: NSPoint(x: bounds.minX + 74.41, y: bounds.maxY - 32.83), controlPoint2: NSPoint(x: bounds.minX + 74.11, y: bounds.maxY - 33.3))
        logoPath.curve(to: NSPoint(x: bounds.minX + 72.13, y: bounds.maxY - 34.48), controlPoint1: NSPoint(x: bounds.minX + 73.29, y: bounds.maxY - 34.04), controlPoint2: NSPoint(x: bounds.minX + 72.77, y: bounds.maxY - 34.31))
        logoPath.curve(to: NSPoint(x: bounds.minX + 69.84, y: bounds.maxY - 34.74), controlPoint1: NSPoint(x: bounds.minX + 71.49, y: bounds.maxY - 34.65), controlPoint2: NSPoint(x: bounds.minX + 70.73, y: bounds.maxY - 34.74))
        logoPath.line(to: NSPoint(x: bounds.minX + 68.4, y: bounds.maxY - 34.74))
        logoPath.curve(to: NSPoint(x: bounds.minX + 66.11, y: bounds.maxY - 34.48), controlPoint1: NSPoint(x: bounds.minX + 67.51, y: bounds.maxY - 34.74), controlPoint2: NSPoint(x: bounds.minX + 66.75, y: bounds.maxY - 34.65))
        logoPath.curve(to: NSPoint(x: bounds.minX + 64.53, y: bounds.maxY - 33.67), controlPoint1: NSPoint(x: bounds.minX + 65.47, y: bounds.maxY - 34.31), controlPoint2: NSPoint(x: bounds.minX + 64.94, y: bounds.maxY - 34.04))
        logoPath.curve(to: NSPoint(x: bounds.minX + 63.62, y: bounds.maxY - 32.25), controlPoint1: NSPoint(x: bounds.minX + 64.12, y: bounds.maxY - 33.3), controlPoint2: NSPoint(x: bounds.minX + 63.82, y: bounds.maxY - 32.83))
        logoPath.curve(to: NSPoint(x: bounds.minX + 63.33, y: bounds.maxY - 29.78), controlPoint1: NSPoint(x: bounds.minX + 63.42, y: bounds.maxY - 31.67), controlPoint2: NSPoint(x: bounds.minX + 63.33, y: bounds.maxY - 30.6))
        logoPath.line(to: NSPoint(x: bounds.minX + 63.33, y: bounds.maxY - 25.58))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 79.17, y: bounds.maxY - 32))
        logoPath.line(to: NSPoint(x: bounds.minX + 84.33, y: bounds.maxY - 32))
        logoPath.line(to: NSPoint(x: bounds.minX + 84.33, y: bounds.maxY - 34.58))
        logoPath.line(to: NSPoint(x: bounds.minX + 76.16, y: bounds.maxY - 34.58))
        logoPath.line(to: NSPoint(x: bounds.minX + 76.16, y: bounds.maxY - 21.15))
        logoPath.line(to: NSPoint(x: bounds.minX + 79.17, y: bounds.maxY - 21.15))
        logoPath.line(to: NSPoint(x: bounds.minX + 79.17, y: bounds.maxY - 32))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 84.98, y: bounds.maxY - 25.58))
        logoPath.curve(to: NSPoint(x: bounds.minX + 85.27, y: bounds.maxY - 23.49), controlPoint1: NSPoint(x: bounds.minX + 84.98, y: bounds.maxY - 24.77), controlPoint2: NSPoint(x: bounds.minX + 85.08, y: bounds.maxY - 24.07))
        logoPath.curve(to: NSPoint(x: bounds.minX + 86.19, y: bounds.maxY - 22.07), controlPoint1: NSPoint(x: bounds.minX + 85.47, y: bounds.maxY - 22.91), controlPoint2: NSPoint(x: bounds.minX + 85.77, y: bounds.maxY - 22.43))
        logoPath.curve(to: NSPoint(x: bounds.minX + 87.76, y: bounds.maxY - 21.26), controlPoint1: NSPoint(x: bounds.minX + 86.6, y: bounds.maxY - 21.7), controlPoint2: NSPoint(x: bounds.minX + 87.12, y: bounds.maxY - 21.43))
        logoPath.curve(to: NSPoint(x: bounds.minX + 90.06, y: bounds.maxY - 21), controlPoint1: NSPoint(x: bounds.minX + 88.4, y: bounds.maxY - 21.09), controlPoint2: NSPoint(x: bounds.minX + 89.17, y: bounds.maxY - 21))
        logoPath.line(to: NSPoint(x: bounds.minX + 91.49, y: bounds.maxY - 21))
        logoPath.curve(to: NSPoint(x: bounds.minX + 93.79, y: bounds.maxY - 21.25), controlPoint1: NSPoint(x: bounds.minX + 92.39, y: bounds.maxY - 21), controlPoint2: NSPoint(x: bounds.minX + 93.15, y: bounds.maxY - 21.08))
        logoPath.curve(to: NSPoint(x: bounds.minX + 95.37, y: bounds.maxY - 22.05), controlPoint1: NSPoint(x: bounds.minX + 94.43, y: bounds.maxY - 21.42), controlPoint2: NSPoint(x: bounds.minX + 94.96, y: bounds.maxY - 21.69))
        logoPath.curve(to: NSPoint(x: bounds.minX + 96.26, y: bounds.maxY - 23.48), controlPoint1: NSPoint(x: bounds.minX + 95.77, y: bounds.maxY - 22.42), controlPoint2: NSPoint(x: bounds.minX + 96.07, y: bounds.maxY - 22.89))
        logoPath.curve(to: NSPoint(x: bounds.minX + 96.55, y: bounds.maxY - 25.58), controlPoint1: NSPoint(x: bounds.minX + 96.46, y: bounds.maxY - 24.06), controlPoint2: NSPoint(x: bounds.minX + 96.55, y: bounds.maxY - 24.76))
        logoPath.line(to: NSPoint(x: bounds.minX + 96.55, y: bounds.maxY - 29.78))
        logoPath.curve(to: NSPoint(x: bounds.minX + 96.26, y: bounds.maxY - 32.25), controlPoint1: NSPoint(x: bounds.minX + 96.55, y: bounds.maxY - 30.6), controlPoint2: NSPoint(x: bounds.minX + 96.45, y: bounds.maxY - 31.67))
        logoPath.curve(to: NSPoint(x: bounds.minX + 95.36, y: bounds.maxY - 33.67), controlPoint1: NSPoint(x: bounds.minX + 96.07, y: bounds.maxY - 32.83), controlPoint2: NSPoint(x: bounds.minX + 95.77, y: bounds.maxY - 33.3))
        logoPath.curve(to: NSPoint(x: bounds.minX + 93.78, y: bounds.maxY - 34.48), controlPoint1: NSPoint(x: bounds.minX + 94.95, y: bounds.maxY - 34.04), controlPoint2: NSPoint(x: bounds.minX + 94.42, y: bounds.maxY - 34.31))
        logoPath.curve(to: NSPoint(x: bounds.minX + 91.49, y: bounds.maxY - 34.74), controlPoint1: NSPoint(x: bounds.minX + 93.15, y: bounds.maxY - 34.65), controlPoint2: NSPoint(x: bounds.minX + 92.38, y: bounds.maxY - 34.74))
        logoPath.line(to: NSPoint(x: bounds.minX + 90.06, y: bounds.maxY - 34.74))
        logoPath.curve(to: NSPoint(x: bounds.minX + 87.76, y: bounds.maxY - 34.48), controlPoint1: NSPoint(x: bounds.minX + 89.17, y: bounds.maxY - 34.74), controlPoint2: NSPoint(x: bounds.minX + 88.4, y: bounds.maxY - 34.65))
        logoPath.curve(to: NSPoint(x: bounds.minX + 86.19, y: bounds.maxY - 33.67), controlPoint1: NSPoint(x: bounds.minX + 87.12, y: bounds.maxY - 34.31), controlPoint2: NSPoint(x: bounds.minX + 86.6, y: bounds.maxY - 34.04))
        logoPath.curve(to: NSPoint(x: bounds.minX + 85.27, y: bounds.maxY - 32.25), controlPoint1: NSPoint(x: bounds.minX + 85.77, y: bounds.maxY - 33.3), controlPoint2: NSPoint(x: bounds.minX + 85.47, y: bounds.maxY - 32.83))
        logoPath.curve(to: NSPoint(x: bounds.minX + 84.98, y: bounds.maxY - 29.78), controlPoint1: NSPoint(x: bounds.minX + 85.08, y: bounds.maxY - 31.67), controlPoint2: NSPoint(x: bounds.minX + 84.98, y: bounds.maxY - 30.6))
        logoPath.line(to: NSPoint(x: bounds.minX + 84.98, y: bounds.maxY - 25.58))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 97.98, y: bounds.maxY - 21.15))
        logoPath.line(to: NSPoint(x: bounds.minX + 101.45, y: bounds.maxY - 21.15))
        logoPath.line(to: NSPoint(x: bounds.minX + 106.47, y: bounds.maxY - 30.32))
        logoPath.line(to: NSPoint(x: bounds.minX + 106.47, y: bounds.maxY - 21.15))
        logoPath.line(to: NSPoint(x: bounds.minX + 109.3, y: bounds.maxY - 21.15))
        logoPath.line(to: NSPoint(x: bounds.minX + 109.3, y: bounds.maxY - 34.58))
        logoPath.line(to: NSPoint(x: bounds.minX + 105.84, y: bounds.maxY - 34.58))
        logoPath.line(to: NSPoint(x: bounds.minX + 100.81, y: bounds.maxY - 25.31))
        logoPath.line(to: NSPoint(x: bounds.minX + 100.81, y: bounds.maxY - 34.58))
        logoPath.line(to: NSPoint(x: bounds.minX + 97.98, y: bounds.maxY - 34.58))
        logoPath.line(to: NSPoint(x: bounds.minX + 97.98, y: bounds.maxY - 21.15))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 111.14, y: bounds.maxY - 34.58))
        logoPath.line(to: NSPoint(x: bounds.minX + 111.14, y: bounds.maxY - 21.15))
        logoPath.line(to: NSPoint(x: bounds.minX + 114.15, y: bounds.maxY - 21.15))
        logoPath.line(to: NSPoint(x: bounds.minX + 114.15, y: bounds.maxY - 34.58))
        logoPath.line(to: NSPoint(x: bounds.minX + 111.14, y: bounds.maxY - 34.58))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 115.97, y: bounds.maxY - 21.15))
        logoPath.line(to: NSPoint(x: bounds.minX + 125.25, y: bounds.maxY - 21.15))
        logoPath.line(to: NSPoint(x: bounds.minX + 125.25, y: bounds.maxY - 23.74))
        logoPath.line(to: NSPoint(x: bounds.minX + 118.99, y: bounds.maxY - 23.74))
        logoPath.line(to: NSPoint(x: bounds.minX + 118.99, y: bounds.maxY - 26.48))
        logoPath.line(to: NSPoint(x: bounds.minX + 125.04, y: bounds.maxY - 26.48))
        logoPath.line(to: NSPoint(x: bounds.minX + 125.04, y: bounds.maxY - 29.05))
        logoPath.line(to: NSPoint(x: bounds.minX + 118.99, y: bounds.maxY - 29.05))
        logoPath.line(to: NSPoint(x: bounds.minX + 118.99, y: bounds.maxY - 32))
        logoPath.line(to: NSPoint(x: bounds.minX + 125.25, y: bounds.maxY - 32))
        logoPath.line(to: NSPoint(x: bounds.minX + 125.25, y: bounds.maxY - 34.58))
        logoPath.line(to: NSPoint(x: bounds.minX + 115.97, y: bounds.maxY - 34.58))
        logoPath.line(to: NSPoint(x: bounds.minX + 115.97, y: bounds.maxY - 21.15))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 134.8, y: bounds.maxY - 27.87))
        logoPath.line(to: NSPoint(x: bounds.minX + 129.98, y: bounds.maxY - 34.58))
        logoPath.line(to: NSPoint(x: bounds.minX + 126.07, y: bounds.maxY - 34.58))
        logoPath.line(to: NSPoint(x: bounds.minX + 130.74, y: bounds.maxY - 27.88))
        logoPath.line(to: NSPoint(x: bounds.minX + 126.28, y: bounds.maxY - 21.15))
        logoPath.line(to: NSPoint(x: bounds.minX + 130.21, y: bounds.maxY - 21.15))
        logoPath.line(to: NSPoint(x: bounds.minX + 134.8, y: bounds.maxY - 27.87))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 54.52, y: bounds.maxY - 23.44))
        logoPath.line(to: NSPoint(x: bounds.minX + 54.52, y: bounds.maxY - 27.78))
        logoPath.line(to: NSPoint(x: bounds.minX + 57.56, y: bounds.maxY - 27.78))
        logoPath.curve(to: NSPoint(x: bounds.minX + 58.4, y: bounds.maxY - 27.69), controlPoint1: NSPoint(x: bounds.minX + 57.9, y: bounds.maxY - 27.78), controlPoint2: NSPoint(x: bounds.minX + 58.18, y: bounds.maxY - 27.75))
        logoPath.curve(to: NSPoint(x: bounds.minX + 58.93, y: bounds.maxY - 27.4), controlPoint1: NSPoint(x: bounds.minX + 58.62, y: bounds.maxY - 27.62), controlPoint2: NSPoint(x: bounds.minX + 58.8, y: bounds.maxY - 27.53))
        logoPath.curve(to: NSPoint(x: bounds.minX + 59.2, y: bounds.maxY - 26.88), controlPoint1: NSPoint(x: bounds.minX + 59.06, y: bounds.maxY - 27.27), controlPoint2: NSPoint(x: bounds.minX + 59.15, y: bounds.maxY - 27.09))
        logoPath.curve(to: NSPoint(x: bounds.minX + 59.28, y: bounds.maxY - 25.12), controlPoint1: NSPoint(x: bounds.minX + 59.25, y: bounds.maxY - 26.67), controlPoint2: NSPoint(x: bounds.minX + 59.28, y: bounds.maxY - 25.41))
        logoPath.curve(to: NSPoint(x: bounds.minX + 59.21, y: bounds.maxY - 24.36), controlPoint1: NSPoint(x: bounds.minX + 59.28, y: bounds.maxY - 24.83), controlPoint2: NSPoint(x: bounds.minX + 59.26, y: bounds.maxY - 24.57))
        logoPath.curve(to: NSPoint(x: bounds.minX + 58.95, y: bounds.maxY - 23.84), controlPoint1: NSPoint(x: bounds.minX + 59.16, y: bounds.maxY - 24.15), controlPoint2: NSPoint(x: bounds.minX + 59.08, y: bounds.maxY - 23.97))
        logoPath.curve(to: NSPoint(x: bounds.minX + 58.41, y: bounds.maxY - 23.53), controlPoint1: NSPoint(x: bounds.minX + 58.82, y: bounds.maxY - 23.7), controlPoint2: NSPoint(x: bounds.minX + 58.64, y: bounds.maxY - 23.6))
        logoPath.curve(to: NSPoint(x: bounds.minX + 57.5, y: bounds.maxY - 23.44), controlPoint1: NSPoint(x: bounds.minX + 58.17, y: bounds.maxY - 23.47), controlPoint2: NSPoint(x: bounds.minX + 57.87, y: bounds.maxY - 23.44))
        logoPath.line(to: NSPoint(x: bounds.minX + 54.52, y: bounds.maxY - 23.44))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 69.01, y: bounds.maxY - 23.58))
        logoPath.curve(to: NSPoint(x: bounds.minX + 67.81, y: bounds.maxY - 23.68), controlPoint1: NSPoint(x: bounds.minX + 68.54, y: bounds.maxY - 23.58), controlPoint2: NSPoint(x: bounds.minX + 68.13, y: bounds.maxY - 23.61))
        logoPath.curve(to: NSPoint(x: bounds.minX + 67, y: bounds.maxY - 24.05), controlPoint1: NSPoint(x: bounds.minX + 67.48, y: bounds.maxY - 23.75), controlPoint2: NSPoint(x: bounds.minX + 67.21, y: bounds.maxY - 23.87))
        logoPath.curve(to: NSPoint(x: bounds.minX + 66.54, y: bounds.maxY - 24.83), controlPoint1: NSPoint(x: bounds.minX + 66.79, y: bounds.maxY - 24.24), controlPoint2: NSPoint(x: bounds.minX + 66.64, y: bounds.maxY - 24.5))
        logoPath.curve(to: NSPoint(x: bounds.minX + 66.4, y: bounds.maxY - 26.52), controlPoint1: NSPoint(x: bounds.minX + 66.45, y: bounds.maxY - 25.17), controlPoint2: NSPoint(x: bounds.minX + 66.4, y: bounds.maxY - 25.98))
        logoPath.line(to: NSPoint(x: bounds.minX + 66.4, y: bounds.maxY - 29.24))
        logoPath.curve(to: NSPoint(x: bounds.minX + 66.54, y: bounds.maxY - 30.92), controlPoint1: NSPoint(x: bounds.minX + 66.4, y: bounds.maxY - 29.78), controlPoint2: NSPoint(x: bounds.minX + 66.45, y: bounds.maxY - 30.58))
        logoPath.curve(to: NSPoint(x: bounds.minX + 67, y: bounds.maxY - 31.7), controlPoint1: NSPoint(x: bounds.minX + 66.64, y: bounds.maxY - 31.25), controlPoint2: NSPoint(x: bounds.minX + 66.79, y: bounds.maxY - 31.51))
        logoPath.curve(to: NSPoint(x: bounds.minX + 67.81, y: bounds.maxY - 32.07), controlPoint1: NSPoint(x: bounds.minX + 67.21, y: bounds.maxY - 31.88), controlPoint2: NSPoint(x: bounds.minX + 67.48, y: bounds.maxY - 32.01))
        logoPath.curve(to: NSPoint(x: bounds.minX + 69.01, y: bounds.maxY - 32.17), controlPoint1: NSPoint(x: bounds.minX + 68.13, y: bounds.maxY - 32.14), controlPoint2: NSPoint(x: bounds.minX + 68.54, y: bounds.maxY - 32.17))
        logoPath.line(to: NSPoint(x: bounds.minX + 69.21, y: bounds.maxY - 32.17))
        logoPath.curve(to: NSPoint(x: bounds.minX + 70.42, y: bounds.maxY - 32.07), controlPoint1: NSPoint(x: bounds.minX + 69.68, y: bounds.maxY - 32.17), controlPoint2: NSPoint(x: bounds.minX + 70.09, y: bounds.maxY - 32.14))
        logoPath.curve(to: NSPoint(x: bounds.minX + 71.22, y: bounds.maxY - 31.7), controlPoint1: NSPoint(x: bounds.minX + 70.75, y: bounds.maxY - 32.01), controlPoint2: NSPoint(x: bounds.minX + 71.02, y: bounds.maxY - 31.88))
        logoPath.curve(to: NSPoint(x: bounds.minX + 71.68, y: bounds.maxY - 30.92), controlPoint1: NSPoint(x: bounds.minX + 71.43, y: bounds.maxY - 31.52), controlPoint2: NSPoint(x: bounds.minX + 71.59, y: bounds.maxY - 31.26))
        logoPath.curve(to: NSPoint(x: bounds.minX + 71.82, y: bounds.maxY - 29.24), controlPoint1: NSPoint(x: bounds.minX + 71.77, y: bounds.maxY - 30.59), controlPoint2: NSPoint(x: bounds.minX + 71.82, y: bounds.maxY - 29.78))
        logoPath.line(to: NSPoint(x: bounds.minX + 71.82, y: bounds.maxY - 26.5))
        logoPath.curve(to: NSPoint(x: bounds.minX + 71.68, y: bounds.maxY - 24.82), controlPoint1: NSPoint(x: bounds.minX + 71.82, y: bounds.maxY - 25.96), controlPoint2: NSPoint(x: bounds.minX + 71.77, y: bounds.maxY - 25.15))
        logoPath.curve(to: NSPoint(x: bounds.minX + 71.23, y: bounds.maxY - 24.05), controlPoint1: NSPoint(x: bounds.minX + 71.59, y: bounds.maxY - 24.49), controlPoint2: NSPoint(x: bounds.minX + 71.44, y: bounds.maxY - 24.23))
        logoPath.curve(to: NSPoint(x: bounds.minX + 70.42, y: bounds.maxY - 23.68), controlPoint1: NSPoint(x: bounds.minX + 71.02, y: bounds.maxY - 23.86), controlPoint2: NSPoint(x: bounds.minX + 70.75, y: bounds.maxY - 23.74))
        logoPath.curve(to: NSPoint(x: bounds.minX + 69.21, y: bounds.maxY - 23.58), controlPoint1: NSPoint(x: bounds.minX + 70.09, y: bounds.maxY - 23.61), controlPoint2: NSPoint(x: bounds.minX + 69.68, y: bounds.maxY - 23.58))
        logoPath.line(to: NSPoint(x: bounds.minX + 69.01, y: bounds.maxY - 23.58))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 90.67, y: bounds.maxY - 23.58))
        logoPath.curve(to: NSPoint(x: bounds.minX + 89.46, y: bounds.maxY - 23.68), controlPoint1: NSPoint(x: bounds.minX + 90.19, y: bounds.maxY - 23.58), controlPoint2: NSPoint(x: bounds.minX + 89.79, y: bounds.maxY - 23.61))
        logoPath.curve(to: NSPoint(x: bounds.minX + 88.65, y: bounds.maxY - 24.05), controlPoint1: NSPoint(x: bounds.minX + 89.13, y: bounds.maxY - 23.75), controlPoint2: NSPoint(x: bounds.minX + 88.86, y: bounds.maxY - 23.87))
        logoPath.curve(to: NSPoint(x: bounds.minX + 88.2, y: bounds.maxY - 24.83), controlPoint1: NSPoint(x: bounds.minX + 88.44, y: bounds.maxY - 24.24), controlPoint2: NSPoint(x: bounds.minX + 88.29, y: bounds.maxY - 24.5))
        logoPath.curve(to: NSPoint(x: bounds.minX + 88.06, y: bounds.maxY - 26.52), controlPoint1: NSPoint(x: bounds.minX + 88.1, y: bounds.maxY - 25.17), controlPoint2: NSPoint(x: bounds.minX + 88.06, y: bounds.maxY - 25.98))
        logoPath.line(to: NSPoint(x: bounds.minX + 88.06, y: bounds.maxY - 29.24))
        logoPath.curve(to: NSPoint(x: bounds.minX + 88.2, y: bounds.maxY - 30.92), controlPoint1: NSPoint(x: bounds.minX + 88.06, y: bounds.maxY - 29.78), controlPoint2: NSPoint(x: bounds.minX + 88.1, y: bounds.maxY - 30.58))
        logoPath.curve(to: NSPoint(x: bounds.minX + 88.65, y: bounds.maxY - 31.7), controlPoint1: NSPoint(x: bounds.minX + 88.29, y: bounds.maxY - 31.25), controlPoint2: NSPoint(x: bounds.minX + 88.44, y: bounds.maxY - 31.51))
        logoPath.curve(to: NSPoint(x: bounds.minX + 89.46, y: bounds.maxY - 32.07), controlPoint1: NSPoint(x: bounds.minX + 88.86, y: bounds.maxY - 31.88), controlPoint2: NSPoint(x: bounds.minX + 89.13, y: bounds.maxY - 32.01))
        logoPath.curve(to: NSPoint(x: bounds.minX + 90.67, y: bounds.maxY - 32.17), controlPoint1: NSPoint(x: bounds.minX + 89.79, y: bounds.maxY - 32.14), controlPoint2: NSPoint(x: bounds.minX + 90.19, y: bounds.maxY - 32.17))
        logoPath.line(to: NSPoint(x: bounds.minX + 90.86, y: bounds.maxY - 32.17))
        logoPath.curve(to: NSPoint(x: bounds.minX + 92.07, y: bounds.maxY - 32.07), controlPoint1: NSPoint(x: bounds.minX + 91.34, y: bounds.maxY - 32.17), controlPoint2: NSPoint(x: bounds.minX + 91.74, y: bounds.maxY - 32.14))
        logoPath.curve(to: NSPoint(x: bounds.minX + 92.88, y: bounds.maxY - 31.7), controlPoint1: NSPoint(x: bounds.minX + 92.4, y: bounds.maxY - 32.01), controlPoint2: NSPoint(x: bounds.minX + 92.67, y: bounds.maxY - 31.88))
        logoPath.curve(to: NSPoint(x: bounds.minX + 93.33, y: bounds.maxY - 30.92), controlPoint1: NSPoint(x: bounds.minX + 93.09, y: bounds.maxY - 31.52), controlPoint2: NSPoint(x: bounds.minX + 93.24, y: bounds.maxY - 31.26))
        logoPath.curve(to: NSPoint(x: bounds.minX + 93.47, y: bounds.maxY - 29.24), controlPoint1: NSPoint(x: bounds.minX + 93.43, y: bounds.maxY - 30.59), controlPoint2: NSPoint(x: bounds.minX + 93.47, y: bounds.maxY - 29.78))
        logoPath.line(to: NSPoint(x: bounds.minX + 93.47, y: bounds.maxY - 26.5))
        logoPath.curve(to: NSPoint(x: bounds.minX + 93.33, y: bounds.maxY - 24.82), controlPoint1: NSPoint(x: bounds.minX + 93.47, y: bounds.maxY - 25.96), controlPoint2: NSPoint(x: bounds.minX + 93.43, y: bounds.maxY - 25.15))
        logoPath.curve(to: NSPoint(x: bounds.minX + 92.88, y: bounds.maxY - 24.05), controlPoint1: NSPoint(x: bounds.minX + 93.24, y: bounds.maxY - 24.49), controlPoint2: NSPoint(x: bounds.minX + 93.09, y: bounds.maxY - 24.23))
        logoPath.curve(to: NSPoint(x: bounds.minX + 92.07, y: bounds.maxY - 23.68), controlPoint1: NSPoint(x: bounds.minX + 92.68, y: bounds.maxY - 23.86), controlPoint2: NSPoint(x: bounds.minX + 92.41, y: bounds.maxY - 23.74))
        logoPath.curve(to: NSPoint(x: bounds.minX + 90.86, y: bounds.maxY - 23.58), controlPoint1: NSPoint(x: bounds.minX + 91.74, y: bounds.maxY - 23.61), controlPoint2: NSPoint(x: bounds.minX + 91.34, y: bounds.maxY - 23.58))
        logoPath.line(to: NSPoint(x: bounds.minX + 90.67, y: bounds.maxY - 23.58))
        logoPath.close()
        logoPath.windingRule = .evenOddWindingRule
        logoWhite.setFill()
        logoPath.fill()
    }
    
    public static func drawBitfinexButton(_ bounds: NSRect = NSRect(x: 0, y: 0, width: 191, height: 56), original: Bool = true, hover: Bool = false, pressed: Bool = false) {
        //// General Declarations
        let context = NSGraphicsContext.current!.cgContext
        
        //// Color Declarations
        let highlightGradientColor = NSColor(deviceRed: 1, green: 1, blue: 1, alpha: 0.09)
        let highlightGradientColor2 = NSColor(deviceRed: 1, green: 1, blue: 1, alpha: 0)
        let shadow2Color = NSColor(deviceRed: 1, green: 1, blue: 1, alpha: 0.36)
        let fillColor2 = NSColor(deviceRed: 1, green: 1, blue: 1, alpha: 1)
        let bitfinexBackground = NSColor(deviceRed: 0.592, green: 0.776, blue: 0.325, alpha: 1)
        
        //// Gradient Declarations
        let highlightGradient = NSGradient(starting: highlightGradientColor, ending: highlightGradientColor2)!
        
        //// Shadow Declarations
        let outerShadow = NSShadow()
        outerShadow.shadowColor = NSColor.black
        outerShadow.shadowOffset = NSSize(width: 0, height: 0)
        outerShadow.shadowBlurRadius = 0.5
        let innerStroke = NSShadow()
        innerStroke.shadowColor = shadow2Color
        innerStroke.shadowOffset = NSSize(width: 0, height: 0)
        innerStroke.shadowBlurRadius = 0.5
        
        if (original) {
            //// bitfinex
            NSGraphicsContext.saveGraphicsState()
            context.translateBy(x: bounds.minX + 95.5, y: bounds.maxY - 28)
            
            outerShadow.set()
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            
            
            //// bitfinexBase Drawing
            let bitfinexBasePath = NSBezierPath(roundedRect: NSRect(x: -88.5, y: -21, width: 177, height: 42), xRadius: 5, yRadius: 5)
            bitfinexBackground.setFill()
            bitfinexBasePath.fill()
            
            
            //// bitfinexHighlight Drawing
            let bitfinexHighlightPath = NSBezierPath(roundedRect: NSRect(x: -88.5, y: -21, width: 177, height: 42), xRadius: 5, yRadius: 5)
            highlightGradient.draw(in: bitfinexHighlightPath, angle: -45)
            
            ////// bitfinexHighlight Inner Shadow
            NSGraphicsContext.saveGraphicsState()
            bitfinexHighlightPath.bounds.clip()
            context.setShadow(offset: NSSize.zero, blur: 0, color: nil)
            
            context.setAlpha(innerStroke.shadowColor!.alphaComponent)
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            let bitfinexHighlightOpaqueShadow = NSShadow()
            bitfinexHighlightOpaqueShadow.shadowColor = innerStroke.shadowColor!.withAlphaComponent(1)
            bitfinexHighlightOpaqueShadow.shadowOffset = innerStroke.shadowOffset
            bitfinexHighlightOpaqueShadow.shadowBlurRadius = innerStroke.shadowBlurRadius
            bitfinexHighlightOpaqueShadow.set()
            
            context.setBlendMode(.sourceOut)
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            
            bitfinexHighlightOpaqueShadow.shadowColor!.setFill()
            bitfinexHighlightPath.fill()
            
            context.endTransparencyLayer()
            context.endTransparencyLayer()
            NSGraphicsContext.restoreGraphicsState()
            
            
            
            context.endTransparencyLayer()
            
            NSGraphicsContext.restoreGraphicsState()
        }
        
        
        if (hover) {
            //// bitfinexHover
            NSGraphicsContext.saveGraphicsState()
            context.translateBy(x: bounds.minX + 95.5, y: bounds.maxY - 28)
            context.scaleBy(x: 1.05, y: 1.05)
            
            outerShadow.set()
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            
            
            //// bitfinexBase 2 Drawing
            let bitfinexBase2Path = NSBezierPath(roundedRect: NSRect(x: -88.5, y: -21, width: 177, height: 42), xRadius: 5, yRadius: 5)
            bitfinexBackground.setFill()
            bitfinexBase2Path.fill()
            
            
            //// bitfinexHighlight 2 Drawing
            let bitfinexHighlight2Path = NSBezierPath(roundedRect: NSRect(x: -88.5, y: -21, width: 177, height: 42), xRadius: 5, yRadius: 5)
            highlightGradient.draw(in: bitfinexHighlight2Path, angle: -45)
            
            ////// bitfinexHighlight 2 Inner Shadow
            NSGraphicsContext.saveGraphicsState()
            bitfinexHighlight2Path.bounds.clip()
            context.setShadow(offset: NSSize.zero, blur: 0, color: nil)
            
            context.setAlpha(innerStroke.shadowColor!.alphaComponent)
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            let bitfinexHighlight2OpaqueShadow = NSShadow()
            bitfinexHighlight2OpaqueShadow.shadowColor = innerStroke.shadowColor!.withAlphaComponent(1)
            bitfinexHighlight2OpaqueShadow.shadowOffset = innerStroke.shadowOffset
            bitfinexHighlight2OpaqueShadow.shadowBlurRadius = innerStroke.shadowBlurRadius
            bitfinexHighlight2OpaqueShadow.set()
            
            context.setBlendMode(.sourceOut)
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            
            bitfinexHighlight2OpaqueShadow.shadowColor!.setFill()
            bitfinexHighlight2Path.fill()
            
            context.endTransparencyLayer()
            context.endTransparencyLayer()
            NSGraphicsContext.restoreGraphicsState()
            
            
            
            context.endTransparencyLayer()
            
            NSGraphicsContext.restoreGraphicsState()
        }
        
        
        if (pressed) {
            //// bitfinexPressed
            NSGraphicsContext.saveGraphicsState()
            context.translateBy(x: bounds.minX + 95.5, y: bounds.maxY - 28)
            
            outerShadow.set()
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            
            
            //// bitfinexBase 3 Drawing
            let bitfinexBase3Path = NSBezierPath(roundedRect: NSRect(x: -88.5, y: -21, width: 177, height: 42), xRadius: 5, yRadius: 5)
            bitfinexBackground.setFill()
            bitfinexBase3Path.fill()
            
            
            //// bitfinexHighlight 3 Drawing
            let bitfinexHighlight3Path = NSBezierPath(roundedRect: NSRect(x: -88.5, y: -21, width: 177, height: 42), xRadius: 5, yRadius: 5)
            highlightGradient.draw(in: bitfinexHighlight3Path, angle: -45)
            
            ////// bitfinexHighlight 3 Inner Shadow
            NSGraphicsContext.saveGraphicsState()
            bitfinexHighlight3Path.bounds.clip()
            context.setShadow(offset: NSSize.zero, blur: 0, color: nil)
            
            context.setAlpha(innerStroke.shadowColor!.alphaComponent)
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            let bitfinexHighlight3OpaqueShadow = NSShadow()
            bitfinexHighlight3OpaqueShadow.shadowColor = innerStroke.shadowColor!.withAlphaComponent(1)
            bitfinexHighlight3OpaqueShadow.shadowOffset = innerStroke.shadowOffset
            bitfinexHighlight3OpaqueShadow.shadowBlurRadius = innerStroke.shadowBlurRadius
            bitfinexHighlight3OpaqueShadow.set()
            
            context.setBlendMode(.sourceOut)
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            
            bitfinexHighlight3OpaqueShadow.shadowColor!.setFill()
            bitfinexHighlight3Path.fill()
            
            context.endTransparencyLayer()
            context.endTransparencyLayer()
            NSGraphicsContext.restoreGraphicsState()
            
            
            
            context.endTransparencyLayer()
            
            NSGraphicsContext.restoreGraphicsState()
        }
        
        
        //// bitfinexLogo
        //// logo Drawing
        let logoPath = NSBezierPath()
        logoPath.move(to: NSPoint(x: bounds.minX + 140.32, y: bounds.maxY - 31.2))
        logoPath.curve(to: NSPoint(x: bounds.minX + 149.51, y: bounds.maxY - 31.35), controlPoint1: NSPoint(x: bounds.minX + 140.93, y: bounds.maxY - 31.84), controlPoint2: NSPoint(x: bounds.minX + 144.27, y: bounds.maxY - 34.93))
        logoPath.curve(to: NSPoint(x: bounds.minX + 152.83, y: bounds.maxY - 20.07), controlPoint1: NSPoint(x: bounds.minX + 153.29, y: bounds.maxY - 28.4), controlPoint2: NSPoint(x: bounds.minX + 153.2, y: bounds.maxY - 22))
        logoPath.curve(to: NSPoint(x: bounds.minX + 140.32, y: bounds.maxY - 31.2), controlPoint1: NSPoint(x: bounds.minX + 152.71, y: bounds.maxY - 20.36), controlPoint2: NSPoint(x: bounds.minX + 148.31, y: bounds.maxY - 29.99))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 152.83, y: bounds.maxY - 20.07))
        logoPath.curve(to: NSPoint(x: bounds.minX + 139.85, y: bounds.maxY - 29.12), controlPoint1: NSPoint(x: bounds.minX + 152.67, y: bounds.maxY - 20.29), controlPoint2: NSPoint(x: bounds.minX + 146.85, y: bounds.maxY - 28.33))
        logoPath.curve(to: NSPoint(x: bounds.minX + 143.1, y: bounds.maxY - 22.49), controlPoint1: NSPoint(x: bounds.minX + 139.71, y: bounds.maxY - 27.24), controlPoint2: NSPoint(x: bounds.minX + 140.11, y: bounds.maxY - 24.42))
        logoPath.curve(to: NSPoint(x: bounds.minX + 152.83, y: bounds.maxY - 20.07), controlPoint1: NSPoint(x: bounds.minX + 147.91, y: bounds.maxY - 19.39), controlPoint2: NSPoint(x: bounds.minX + 152.79, y: bounds.maxY - 20.05))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 49.03, y: bounds.maxY - 27.1))
        logoPath.curve(to: NSPoint(x: bounds.minX + 52.47, y: bounds.maxY - 29.71), controlPoint1: NSPoint(x: bounds.minX + 51.56, y: bounds.maxY - 27.16), controlPoint2: NSPoint(x: bounds.minX + 52.47, y: bounds.maxY - 28.33))
        logoPath.curve(to: NSPoint(x: bounds.minX + 48.69, y: bounds.maxY - 32.56), controlPoint1: NSPoint(x: bounds.minX + 52.47, y: bounds.maxY - 31.65), controlPoint2: NSPoint(x: bounds.minX + 50.85, y: bounds.maxY - 32.56))
        logoPath.line(to: NSPoint(x: bounds.minX + 40, y: bounds.maxY - 32.56))
        logoPath.line(to: NSPoint(x: bounds.minX + 40, y: bounds.maxY - 22.15))
        logoPath.line(to: NSPoint(x: bounds.minX + 48.43, y: bounds.maxY - 22.15))
        logoPath.curve(to: NSPoint(x: bounds.minX + 52.15, y: bounds.maxY - 24.64), controlPoint1: NSPoint(x: bounds.minX + 51.07, y: bounds.maxY - 22.15), controlPoint2: NSPoint(x: bounds.minX + 52.15, y: bounds.maxY - 23.28))
        logoPath.curve(to: NSPoint(x: bounds.minX + 49.03, y: bounds.maxY - 27.1), controlPoint1: NSPoint(x: bounds.minX + 52.15, y: bounds.maxY - 25.89), controlPoint2: NSPoint(x: bounds.minX + 51.32, y: bounds.maxY - 27.03))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 47.81, y: bounds.maxY - 30.82))
        logoPath.curve(to: NSPoint(x: bounds.minX + 49.87, y: bounds.maxY - 29.42), controlPoint1: NSPoint(x: bounds.minX + 49.19, y: bounds.maxY - 30.82), controlPoint2: NSPoint(x: bounds.minX + 49.87, y: bounds.maxY - 30.23))
        logoPath.curve(to: NSPoint(x: bounds.minX + 47.81, y: bounds.maxY - 27.92), controlPoint1: NSPoint(x: bounds.minX + 49.87, y: bounds.maxY - 28.57), controlPoint2: NSPoint(x: bounds.minX + 49.17, y: bounds.maxY - 27.92))
        logoPath.line(to: NSPoint(x: bounds.minX + 42.36, y: bounds.maxY - 27.92))
        logoPath.line(to: NSPoint(x: bounds.minX + 42.36, y: bounds.maxY - 30.82))
        logoPath.line(to: NSPoint(x: bounds.minX + 47.81, y: bounds.maxY - 30.82))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 47.63, y: bounds.maxY - 26.36))
        logoPath.curve(to: NSPoint(x: bounds.minX + 49.63, y: bounds.maxY - 25.12), controlPoint1: NSPoint(x: bounds.minX + 48.98, y: bounds.maxY - 26.36), controlPoint2: NSPoint(x: bounds.minX + 49.63, y: bounds.maxY - 25.76))
        logoPath.curve(to: NSPoint(x: bounds.minX + 47.63, y: bounds.maxY - 23.92), controlPoint1: NSPoint(x: bounds.minX + 49.63, y: bounds.maxY - 24.42), controlPoint2: NSPoint(x: bounds.minX + 49.07, y: bounds.maxY - 23.92))
        logoPath.line(to: NSPoint(x: bounds.minX + 42.36, y: bounds.maxY - 23.92))
        logoPath.line(to: NSPoint(x: bounds.minX + 42.36, y: bounds.maxY - 26.36))
        logoPath.line(to: NSPoint(x: bounds.minX + 47.63, y: bounds.maxY - 26.36))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 55.25, y: bounds.maxY - 22.15))
        logoPath.line(to: NSPoint(x: bounds.minX + 57.61, y: bounds.maxY - 22.15))
        logoPath.line(to: NSPoint(x: bounds.minX + 57.61, y: bounds.maxY - 32.56))
        logoPath.line(to: NSPoint(x: bounds.minX + 55.25, y: bounds.maxY - 32.56))
        logoPath.line(to: NSPoint(x: bounds.minX + 55.25, y: bounds.maxY - 22.15))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 67.16, y: bounds.maxY - 24.12))
        logoPath.line(to: NSPoint(x: bounds.minX + 67.16, y: bounds.maxY - 32.56))
        logoPath.line(to: NSPoint(x: bounds.minX + 64.81, y: bounds.maxY - 32.56))
        logoPath.line(to: NSPoint(x: bounds.minX + 64.81, y: bounds.maxY - 24.12))
        logoPath.line(to: NSPoint(x: bounds.minX + 59.62, y: bounds.maxY - 24.12))
        logoPath.line(to: NSPoint(x: bounds.minX + 59.62, y: bounds.maxY - 22.15))
        logoPath.line(to: NSPoint(x: bounds.minX + 72.35, y: bounds.maxY - 22.15))
        logoPath.line(to: NSPoint(x: bounds.minX + 72.35, y: bounds.maxY - 24.12))
        logoPath.line(to: NSPoint(x: bounds.minX + 67.16, y: bounds.maxY - 24.12))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 74.36, y: bounds.maxY - 22.15))
        logoPath.line(to: NSPoint(x: bounds.minX + 85.7, y: bounds.maxY - 22.15))
        logoPath.line(to: NSPoint(x: bounds.minX + 85.7, y: bounds.maxY - 23.95))
        logoPath.line(to: NSPoint(x: bounds.minX + 76.72, y: bounds.maxY - 23.95))
        logoPath.line(to: NSPoint(x: bounds.minX + 76.72, y: bounds.maxY - 26.79))
        logoPath.line(to: NSPoint(x: bounds.minX + 82.25, y: bounds.maxY - 26.79))
        logoPath.line(to: NSPoint(x: bounds.minX + 82.25, y: bounds.maxY - 28.5))
        logoPath.line(to: NSPoint(x: bounds.minX + 76.72, y: bounds.maxY - 28.5))
        logoPath.line(to: NSPoint(x: bounds.minX + 76.72, y: bounds.maxY - 32.56))
        logoPath.line(to: NSPoint(x: bounds.minX + 74.36, y: bounds.maxY - 32.56))
        logoPath.line(to: NSPoint(x: bounds.minX + 74.36, y: bounds.maxY - 22.15))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 87.61, y: bounds.maxY - 22.15))
        logoPath.line(to: NSPoint(x: bounds.minX + 89.97, y: bounds.maxY - 22.15))
        logoPath.line(to: NSPoint(x: bounds.minX + 89.97, y: bounds.maxY - 32.56))
        logoPath.line(to: NSPoint(x: bounds.minX + 87.61, y: bounds.maxY - 32.56))
        logoPath.line(to: NSPoint(x: bounds.minX + 87.61, y: bounds.maxY - 22.15))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 95.49, y: bounds.maxY - 24.69))
        logoPath.line(to: NSPoint(x: bounds.minX + 95.49, y: bounds.maxY - 32.56))
        logoPath.line(to: NSPoint(x: bounds.minX + 93.15, y: bounds.maxY - 32.56))
        logoPath.line(to: NSPoint(x: bounds.minX + 93.15, y: bounds.maxY - 22.15))
        logoPath.line(to: NSPoint(x: bounds.minX + 96.14, y: bounds.maxY - 22.15))
        logoPath.line(to: NSPoint(x: bounds.minX + 103.64, y: bounds.maxY - 29.65))
        logoPath.line(to: NSPoint(x: bounds.minX + 103.64, y: bounds.maxY - 22.15))
        logoPath.line(to: NSPoint(x: bounds.minX + 105.97, y: bounds.maxY - 22.15))
        logoPath.line(to: NSPoint(x: bounds.minX + 105.97, y: bounds.maxY - 32.56))
        logoPath.line(to: NSPoint(x: bounds.minX + 103.3, y: bounds.maxY - 32.56))
        logoPath.line(to: NSPoint(x: bounds.minX + 95.49, y: bounds.maxY - 24.69))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 109.15, y: bounds.maxY - 22.15))
        logoPath.line(to: NSPoint(x: bounds.minX + 120.69, y: bounds.maxY - 22.15))
        logoPath.line(to: NSPoint(x: bounds.minX + 120.69, y: bounds.maxY - 23.95))
        logoPath.line(to: NSPoint(x: bounds.minX + 111.51, y: bounds.maxY - 23.95))
        logoPath.line(to: NSPoint(x: bounds.minX + 111.51, y: bounds.maxY - 26.33))
        logoPath.line(to: NSPoint(x: bounds.minX + 117.01, y: bounds.maxY - 26.33))
        logoPath.line(to: NSPoint(x: bounds.minX + 117.01, y: bounds.maxY - 27.95))
        logoPath.line(to: NSPoint(x: bounds.minX + 111.51, y: bounds.maxY - 27.95))
        logoPath.line(to: NSPoint(x: bounds.minX + 111.51, y: bounds.maxY - 30.81))
        logoPath.line(to: NSPoint(x: bounds.minX + 120.69, y: bounds.maxY - 30.81))
        logoPath.line(to: NSPoint(x: bounds.minX + 120.69, y: bounds.maxY - 32.56))
        logoPath.line(to: NSPoint(x: bounds.minX + 109.15, y: bounds.maxY - 32.56))
        logoPath.line(to: NSPoint(x: bounds.minX + 109.15, y: bounds.maxY - 22.15))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 136.47, y: bounds.maxY - 22.15))
        logoPath.line(to: NSPoint(x: bounds.minX + 130.91, y: bounds.maxY - 27.27))
        logoPath.line(to: NSPoint(x: bounds.minX + 136.68, y: bounds.maxY - 32.56))
        logoPath.line(to: NSPoint(x: bounds.minX + 133.5, y: bounds.maxY - 32.56))
        logoPath.line(to: NSPoint(x: bounds.minX + 129.35, y: bounds.maxY - 28.72))
        logoPath.line(to: NSPoint(x: bounds.minX + 125.19, y: bounds.maxY - 32.56))
        logoPath.line(to: NSPoint(x: bounds.minX + 122.08, y: bounds.maxY - 32.56))
        logoPath.line(to: NSPoint(x: bounds.minX + 127.83, y: bounds.maxY - 27.28))
        logoPath.line(to: NSPoint(x: bounds.minX + 122.28, y: bounds.maxY - 22.15))
        logoPath.line(to: NSPoint(x: bounds.minX + 125.44, y: bounds.maxY - 22.15))
        logoPath.line(to: NSPoint(x: bounds.minX + 129.38, y: bounds.maxY - 25.81))
        logoPath.line(to: NSPoint(x: bounds.minX + 133.36, y: bounds.maxY - 22.15))
        logoPath.line(to: NSPoint(x: bounds.minX + 136.47, y: bounds.maxY - 22.15))
        logoPath.close()
        fillColor2.setFill()
        logoPath.fill()
    }
}
