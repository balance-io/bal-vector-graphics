//
//  InstitutionButtons.swift
//  BalanceVectorGraphics
//
//  Created by Benjamin Baron on 8/22/17.
//  Copyright © 2017 Balanced Software. All rights reserved.
//

import Foundation

public struct InstitutionButtons {
    public static func drawCoinbaseButton(bounds: NSRect = NSRect(x: 0, y: 0, width: 191, height: 56), original: Bool = true, hover: Bool = false, pressed: Bool = false) {
        //// General Declarations
        let context = NSGraphicsContext.current!.cgContext
        
        //// Color Declarations
        let highlightGradientColor = NSColor(red: 1, green: 1, blue: 1, alpha: 0.09)
        let highlightGradientColor2 = NSColor(red: 1, green: 1, blue: 1, alpha: 0)
        let shadow2Color = NSColor(red: 1, green: 1, blue: 1, alpha: 0.36)
        let coinbaseBackground = NSColor(red: 0.024, green: 0.404, blue: 0.816, alpha: 1)
        let fillColor4 = NSColor(red: 1, green: 1, blue: 1, alpha: 1)
        
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
        //// Logo Drawing
        let logoPath = NSBezierPath()
        logoPath.move(to: NSPoint(x: bounds.minX + 61.73, y: bounds.maxY - 33.26))
        logoPath.curve(to: NSPoint(x: bounds.minX + 63.47, y: bounds.maxY - 32.93), controlPoint1: NSPoint(x: bounds.minX + 62.35, y: bounds.maxY - 33.26), controlPoint2: NSPoint(x: bounds.minX + 62.93, y: bounds.maxY - 33.15))
        logoPath.curve(to: NSPoint(x: bounds.minX + 64.61, y: bounds.maxY - 34.68), controlPoint1: NSPoint(x: bounds.minX + 63.47, y: bounds.maxY - 32.95), controlPoint2: NSPoint(x: bounds.minX + 64.59, y: bounds.maxY - 34.67))
        logoPath.curve(to: NSPoint(x: bounds.minX + 61.4, y: bounds.maxY - 35.46), controlPoint1: NSPoint(x: bounds.minX + 63.62, y: bounds.maxY - 35.21), controlPoint2: NSPoint(x: bounds.minX + 62.52, y: bounds.maxY - 35.48))
        logoPath.curve(to: NSPoint(x: bounds.minX + 55.5, y: bounds.maxY - 29.61), controlPoint1: NSPoint(x: bounds.minX + 57.98, y: bounds.maxY - 35.47), controlPoint2: NSPoint(x: bounds.minX + 55.5, y: bounds.maxY - 33.21))
        logoPath.curve(to: NSPoint(x: bounds.minX + 61.4, y: bounds.maxY - 23.75), controlPoint1: NSPoint(x: bounds.minX + 55.5, y: bounds.maxY - 25.99), controlPoint2: NSPoint(x: bounds.minX + 58.1, y: bounds.maxY - 23.75))
        logoPath.curve(to: NSPoint(x: bounds.minX + 64.42, y: bounds.maxY - 24.49), controlPoint1: NSPoint(x: bounds.minX + 62.57, y: bounds.maxY - 23.75), controlPoint2: NSPoint(x: bounds.minX + 63.49, y: bounds.maxY - 24))
        logoPath.line(to: NSPoint(x: bounds.minX + 63.35, y: bounds.maxY - 26.29))
        logoPath.curve(to: NSPoint(x: bounds.minX + 61.62, y: bounds.maxY - 25.97), controlPoint1: NSPoint(x: bounds.minX + 62.79, y: bounds.maxY - 26.07), controlPoint2: NSPoint(x: bounds.minX + 62.22, y: bounds.maxY - 25.97))
        logoPath.curve(to: NSPoint(x: bounds.minX + 58.03, y: bounds.maxY - 29.61), controlPoint1: NSPoint(x: bounds.minX + 59.6, y: bounds.maxY - 25.97), controlPoint2: NSPoint(x: bounds.minX + 58.03, y: bounds.maxY - 27.26))
        logoPath.curve(to: NSPoint(x: bounds.minX + 61.73, y: bounds.maxY - 33.26), controlPoint1: NSPoint(x: bounds.minX + 58.03, y: bounds.maxY - 31.84), controlPoint2: NSPoint(x: bounds.minX + 59.55, y: bounds.maxY - 33.26))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 70.35, y: bounds.maxY - 23.75))
        logoPath.curve(to: NSPoint(x: bounds.minX + 76.14, y: bounds.maxY - 29.61), controlPoint1: NSPoint(x: bounds.minX + 73.71, y: bounds.maxY - 23.75), controlPoint2: NSPoint(x: bounds.minX + 76.14, y: bounds.maxY - 26.13))
        logoPath.curve(to: NSPoint(x: bounds.minX + 70.34, y: bounds.maxY - 35.46), controlPoint1: NSPoint(x: bounds.minX + 76.14, y: bounds.maxY - 33.08), controlPoint2: NSPoint(x: bounds.minX + 73.71, y: bounds.maxY - 35.46))
        logoPath.curve(to: NSPoint(x: bounds.minX + 64.57, y: bounds.maxY - 29.61), controlPoint1: NSPoint(x: bounds.minX + 67.01, y: bounds.maxY - 35.46), controlPoint2: NSPoint(x: bounds.minX + 64.57, y: bounds.maxY - 33.08))
        logoPath.curve(to: NSPoint(x: bounds.minX + 70.35, y: bounds.maxY - 23.75), controlPoint1: NSPoint(x: bounds.minX + 64.57, y: bounds.maxY - 26.13), controlPoint2: NSPoint(x: bounds.minX + 67.01, y: bounds.maxY - 23.75))
        logoPath.line(to: NSPoint(x: bounds.minX + 70.35, y: bounds.maxY - 23.75))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 70.35, y: bounds.maxY - 25.89))
        logoPath.curve(to: NSPoint(x: bounds.minX + 67.11, y: bounds.maxY - 29.61), controlPoint1: NSPoint(x: bounds.minX + 68.47, y: bounds.maxY - 25.89), controlPoint2: NSPoint(x: bounds.minX + 67.11, y: bounds.maxY - 27.34))
        logoPath.curve(to: NSPoint(x: bounds.minX + 70.35, y: bounds.maxY - 33.31), controlPoint1: NSPoint(x: bounds.minX + 67.11, y: bounds.maxY - 31.87), controlPoint2: NSPoint(x: bounds.minX + 68.47, y: bounds.maxY - 33.31))
        logoPath.curve(to: NSPoint(x: bounds.minX + 73.61, y: bounds.maxY - 29.61), controlPoint1: NSPoint(x: bounds.minX + 72.27, y: bounds.maxY - 33.31), controlPoint2: NSPoint(x: bounds.minX + 73.61, y: bounds.maxY - 31.87))
        logoPath.curve(to: NSPoint(x: bounds.minX + 70.35, y: bounds.maxY - 25.89), controlPoint1: NSPoint(x: bounds.minX + 73.61, y: bounds.maxY - 27.34), controlPoint2: NSPoint(x: bounds.minX + 72.27, y: bounds.maxY - 25.89))
        logoPath.line(to: NSPoint(x: bounds.minX + 70.35, y: bounds.maxY - 25.89))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 77.73, y: bounds.maxY - 35.21))
        logoPath.line(to: NSPoint(x: bounds.minX + 77.73, y: bounds.maxY - 24))
        logoPath.line(to: NSPoint(x: bounds.minX + 80.24, y: bounds.maxY - 24))
        logoPath.line(to: NSPoint(x: bounds.minX + 80.24, y: bounds.maxY - 35.2))
        logoPath.line(to: NSPoint(x: bounds.minX + 77.73, y: bounds.maxY - 35.2))
        logoPath.line(to: NSPoint(x: bounds.minX + 77.73, y: bounds.maxY - 35.21))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 77.4, y: bounds.maxY - 20.55))
        logoPath.curve(to: NSPoint(x: bounds.minX + 78.97, y: bounds.maxY - 19.08), controlPoint1: NSPoint(x: bounds.minX + 77.45, y: bounds.maxY - 19.73), controlPoint2: NSPoint(x: bounds.minX + 78.14, y: bounds.maxY - 19.08))
        logoPath.curve(to: NSPoint(x: bounds.minX + 80.54, y: bounds.maxY - 20.55), controlPoint1: NSPoint(x: bounds.minX + 79.8, y: bounds.maxY - 19.08), controlPoint2: NSPoint(x: bounds.minX + 80.49, y: bounds.maxY - 19.73))
        logoPath.curve(to: NSPoint(x: bounds.minX + 78.97, y: bounds.maxY - 22.15), controlPoint1: NSPoint(x: bounds.minX + 80.54, y: bounds.maxY - 21.42), controlPoint2: NSPoint(x: bounds.minX + 79.84, y: bounds.maxY - 22.14))
        logoPath.curve(to: NSPoint(x: bounds.minX + 77.41, y: bounds.maxY - 20.55), controlPoint1: NSPoint(x: bounds.minX + 78.1, y: bounds.maxY - 22.14), controlPoint2: NSPoint(x: bounds.minX + 77.41, y: bounds.maxY - 21.42))
        logoPath.line(to: NSPoint(x: bounds.minX + 77.4, y: bounds.maxY - 20.55))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 82.43, y: bounds.maxY - 24.71))
        logoPath.curve(to: NSPoint(x: bounds.minX + 87.56, y: bounds.maxY - 23.75), controlPoint1: NSPoint(x: bounds.minX + 84.07, y: bounds.maxY - 24.09), controlPoint2: NSPoint(x: bounds.minX + 85.81, y: bounds.maxY - 23.76))
        logoPath.curve(to: NSPoint(x: bounds.minX + 92.24, y: bounds.maxY - 27.99), controlPoint1: NSPoint(x: bounds.minX + 90.43, y: bounds.maxY - 23.75), controlPoint2: NSPoint(x: bounds.minX + 92.24, y: bounds.maxY - 24.83))
        logoPath.line(to: NSPoint(x: bounds.minX + 92.24, y: bounds.maxY - 35.21))
        logoPath.line(to: NSPoint(x: bounds.minX + 89.77, y: bounds.maxY - 35.21))
        logoPath.line(to: NSPoint(x: bounds.minX + 89.77, y: bounds.maxY - 28.23))
        logoPath.curve(to: NSPoint(x: bounds.minX + 87.37, y: bounds.maxY - 26.03), controlPoint1: NSPoint(x: bounds.minX + 89.77, y: bounds.maxY - 26.61), controlPoint2: NSPoint(x: bounds.minX + 88.76, y: bounds.maxY - 26.03))
        logoPath.curve(to: NSPoint(x: bounds.minX + 84.93, y: bounds.maxY - 26.35), controlPoint1: NSPoint(x: bounds.minX + 86.48, y: bounds.maxY - 26.03), controlPoint2: NSPoint(x: bounds.minX + 85.59, y: bounds.maxY - 26.15))
        logoPath.line(to: NSPoint(x: bounds.minX + 84.93, y: bounds.maxY - 35.2))
        logoPath.line(to: NSPoint(x: bounds.minX + 82.43, y: bounds.maxY - 35.2))
        logoPath.line(to: NSPoint(x: bounds.minX + 82.43, y: bounds.maxY - 24.71))
        logoPath.line(to: NSPoint(x: bounds.minX + 82.43, y: bounds.maxY - 24.71))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 94.34, y: bounds.maxY - 18))
        logoPath.line(to: NSPoint(x: bounds.minX + 96.85, y: bounds.maxY - 18))
        logoPath.line(to: NSPoint(x: bounds.minX + 96.85, y: bounds.maxY - 24.3))
        logoPath.curve(to: NSPoint(x: bounds.minX + 99.4, y: bounds.maxY - 23.75), controlPoint1: NSPoint(x: bounds.minX + 97.38, y: bounds.maxY - 24.02), controlPoint2: NSPoint(x: bounds.minX + 98.41, y: bounds.maxY - 23.75))
        logoPath.curve(to: NSPoint(x: bounds.minX + 105.07, y: bounds.maxY - 29.41), controlPoint1: NSPoint(x: bounds.minX + 102.64, y: bounds.maxY - 23.75), controlPoint2: NSPoint(x: bounds.minX + 105.07, y: bounds.maxY - 25.81))
        logoPath.curve(to: NSPoint(x: bounds.minX + 98.52, y: bounds.maxY - 35.46), controlPoint1: NSPoint(x: bounds.minX + 105.07, y: bounds.maxY - 33.03), controlPoint2: NSPoint(x: bounds.minX + 102.67, y: bounds.maxY - 35.46))
        logoPath.curve(to: NSPoint(x: bounds.minX + 94.34, y: bounds.maxY - 34.73), controlPoint1: NSPoint(x: bounds.minX + 96.9, y: bounds.maxY - 35.46), controlPoint2: NSPoint(x: bounds.minX + 95.48, y: bounds.maxY - 35.13))
        logoPath.line(to: NSPoint(x: bounds.minX + 94.34, y: bounds.maxY - 18))
        logoPath.line(to: NSPoint(x: bounds.minX + 94.34, y: bounds.maxY - 18))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 96.85, y: bounds.maxY - 33.08))
        logoPath.curve(to: NSPoint(x: bounds.minX + 98.59, y: bounds.maxY - 33.31), controlPoint1: NSPoint(x: bounds.minX + 97.33, y: bounds.maxY - 33.23), controlPoint2: NSPoint(x: bounds.minX + 97.96, y: bounds.maxY - 33.31))
        logoPath.curve(to: NSPoint(x: bounds.minX + 102.54, y: bounds.maxY - 29.47), controlPoint1: NSPoint(x: bounds.minX + 100.89, y: bounds.maxY - 33.31), controlPoint2: NSPoint(x: bounds.minX + 102.54, y: bounds.maxY - 32.05))
        logoPath.curve(to: NSPoint(x: bounds.minX + 99.1, y: bounds.maxY - 26), controlPoint1: NSPoint(x: bounds.minX + 102.54, y: bounds.maxY - 27.29), controlPoint2: NSPoint(x: bounds.minX + 100.99, y: bounds.maxY - 26))
        logoPath.curve(to: NSPoint(x: bounds.minX + 96.85, y: bounds.maxY - 26.53), controlPoint1: NSPoint(x: bounds.minX + 98.11, y: bounds.maxY - 26), controlPoint2: NSPoint(x: bounds.minX + 97.35, y: bounds.maxY - 26.25))
        logoPath.line(to: NSPoint(x: bounds.minX + 96.85, y: bounds.maxY - 33.08))
        logoPath.line(to: NSPoint(x: bounds.minX + 96.85, y: bounds.maxY - 33.08))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 112.31, y: bounds.maxY - 27.69))
        logoPath.curve(to: NSPoint(x: bounds.minX + 110.15, y: bounds.maxY - 25.92), controlPoint1: NSPoint(x: bounds.minX + 112.31, y: bounds.maxY - 26.48), controlPoint2: NSPoint(x: bounds.minX + 111.39, y: bounds.maxY - 25.92))
        logoPath.curve(to: NSPoint(x: bounds.minX + 106.92, y: bounds.maxY - 26.83), controlPoint1: NSPoint(x: bounds.minX + 108.87, y: bounds.maxY - 25.92), controlPoint2: NSPoint(x: bounds.minX + 107.85, y: bounds.maxY - 26.3))
        logoPath.line(to: NSPoint(x: bounds.minX + 106.92, y: bounds.maxY - 24.65))
        logoPath.curve(to: NSPoint(x: bounds.minX + 110.56, y: bounds.maxY - 23.75), controlPoint1: NSPoint(x: bounds.minX + 108.04, y: bounds.maxY - 24.05), controlPoint2: NSPoint(x: bounds.minX + 109.29, y: bounds.maxY - 23.73))
        logoPath.curve(to: NSPoint(x: bounds.minX + 114.76, y: bounds.maxY - 27.57), controlPoint1: NSPoint(x: bounds.minX + 113.01, y: bounds.maxY - 23.75), controlPoint2: NSPoint(x: bounds.minX + 114.76, y: bounds.maxY - 24.76))
        logoPath.line(to: NSPoint(x: bounds.minX + 114.76, y: bounds.maxY - 34.98))
        logoPath.curve(to: NSPoint(x: bounds.minX + 110.91, y: bounds.maxY - 35.43), controlPoint1: NSPoint(x: bounds.minX + 113.69, y: bounds.maxY - 35.26), controlPoint2: NSPoint(x: bounds.minX + 112.18, y: bounds.maxY - 35.43))
        logoPath.curve(to: NSPoint(x: bounds.minX + 105.88, y: bounds.maxY - 32.02), controlPoint1: NSPoint(x: bounds.minX + 108.01, y: bounds.maxY - 35.43), controlPoint2: NSPoint(x: bounds.minX + 105.88, y: bounds.maxY - 34.55))
        logoPath.curve(to: NSPoint(x: bounds.minX + 111.07, y: bounds.maxY - 28.63), controlPoint1: NSPoint(x: bounds.minX + 105.88, y: bounds.maxY - 29.74), controlPoint2: NSPoint(x: bounds.minX + 107.83, y: bounds.maxY - 28.63))
        logoPath.line(to: NSPoint(x: bounds.minX + 112.31, y: bounds.maxY - 28.63))
        logoPath.line(to: NSPoint(x: bounds.minX + 112.31, y: bounds.maxY - 27.69))
        logoPath.line(to: NSPoint(x: bounds.minX + 112.31, y: bounds.maxY - 27.69))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 112.31, y: bounds.maxY - 30.29))
        logoPath.line(to: NSPoint(x: bounds.minX + 111.25, y: bounds.maxY - 30.29))
        logoPath.curve(to: NSPoint(x: bounds.minX + 108.36, y: bounds.maxY - 31.95), controlPoint1: NSPoint(x: bounds.minX + 109.5, y: bounds.maxY - 30.29), controlPoint2: NSPoint(x: bounds.minX + 108.36, y: bounds.maxY - 30.81))
        logoPath.curve(to: NSPoint(x: bounds.minX + 110.94, y: bounds.maxY - 33.56), controlPoint1: NSPoint(x: bounds.minX + 108.36, y: bounds.maxY - 33.11), controlPoint2: NSPoint(x: bounds.minX + 109.43, y: bounds.maxY - 33.56))
        logoPath.curve(to: NSPoint(x: bounds.minX + 112.31, y: bounds.maxY - 33.44), controlPoint1: NSPoint(x: bounds.minX + 111.32, y: bounds.maxY - 33.56), controlPoint2: NSPoint(x: bounds.minX + 111.85, y: bounds.maxY - 33.51))
        logoPath.line(to: NSPoint(x: bounds.minX + 112.31, y: bounds.maxY - 30.3))
        logoPath.line(to: NSPoint(x: bounds.minX + 112.31, y: bounds.maxY - 30.29))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 116.58, y: bounds.maxY - 32.17))
        logoPath.curve(to: NSPoint(x: bounds.minX + 120, y: bounds.maxY - 33.44), controlPoint1: NSPoint(x: bounds.minX + 117.56, y: bounds.maxY - 32.95), controlPoint2: NSPoint(x: bounds.minX + 118.75, y: bounds.maxY - 33.39))
        logoPath.curve(to: NSPoint(x: bounds.minX + 121.85, y: bounds.maxY - 32.17), controlPoint1: NSPoint(x: bounds.minX + 121.11, y: bounds.maxY - 33.44), controlPoint2: NSPoint(x: bounds.minX + 121.85, y: bounds.maxY - 33.06))
        logoPath.curve(to: NSPoint(x: bounds.minX + 119.75, y: bounds.maxY - 30.55), controlPoint1: NSPoint(x: bounds.minX + 121.85, y: bounds.maxY - 31.26), controlPoint2: NSPoint(x: bounds.minX + 121.19, y: bounds.maxY - 30.93))
        logoPath.curve(to: NSPoint(x: bounds.minX + 116.43, y: bounds.maxY - 27.13), controlPoint1: NSPoint(x: bounds.minX + 117.41, y: bounds.maxY - 30.02), controlPoint2: NSPoint(x: bounds.minX + 116.43, y: bounds.maxY - 29.09))
        logoPath.curve(to: NSPoint(x: bounds.minX + 120.43, y: bounds.maxY - 23.75), controlPoint1: NSPoint(x: bounds.minX + 116.43, y: bounds.maxY - 24.86), controlPoint2: NSPoint(x: bounds.minX + 118.15, y: bounds.maxY - 23.75))
        logoPath.curve(to: NSPoint(x: bounds.minX + 123.65, y: bounds.maxY - 24.61), controlPoint1: NSPoint(x: bounds.minX + 121.7, y: bounds.maxY - 23.75), controlPoint2: NSPoint(x: bounds.minX + 122.71, y: bounds.maxY - 24.02))
        logoPath.line(to: NSPoint(x: bounds.minX + 123.65, y: bounds.maxY - 26.91))
        logoPath.curve(to: NSPoint(x: bounds.minX + 120.51, y: bounds.maxY - 25.77), controlPoint1: NSPoint(x: bounds.minX + 122.75, y: bounds.maxY - 26.19), controlPoint2: NSPoint(x: bounds.minX + 121.65, y: bounds.maxY - 25.8))
        logoPath.curve(to: NSPoint(x: bounds.minX + 118.84, y: bounds.maxY - 27.04), controlPoint1: NSPoint(x: bounds.minX + 119.42, y: bounds.maxY - 25.77), controlPoint2: NSPoint(x: bounds.minX + 118.84, y: bounds.maxY - 26.31))
        logoPath.curve(to: NSPoint(x: bounds.minX + 120.61, y: bounds.maxY - 28.51), controlPoint1: NSPoint(x: bounds.minX + 118.84, y: bounds.maxY - 27.77), controlPoint2: NSPoint(x: bounds.minX + 119.31, y: bounds.maxY - 28.15))
        logoPath.curve(to: NSPoint(x: bounds.minX + 124.27, y: bounds.maxY - 32.04), controlPoint1: NSPoint(x: bounds.minX + 123.17, y: bounds.maxY - 29.06), controlPoint2: NSPoint(x: bounds.minX + 124.27, y: bounds.maxY - 30.02))
        logoPath.curve(to: NSPoint(x: bounds.minX + 120.05, y: bounds.maxY - 35.46), controlPoint1: NSPoint(x: bounds.minX + 124.27, y: bounds.maxY - 34.4), controlPoint2: NSPoint(x: bounds.minX + 122.48, y: bounds.maxY - 35.46))
        logoPath.curve(to: NSPoint(x: bounds.minX + 116.59, y: bounds.maxY - 34.55), controlPoint1: NSPoint(x: bounds.minX + 118.84, y: bounds.maxY - 35.48), controlPoint2: NSPoint(x: bounds.minX + 117.64, y: bounds.maxY - 35.17))
        logoPath.line(to: NSPoint(x: bounds.minX + 116.59, y: bounds.maxY - 32.17))
        logoPath.line(to: NSPoint(x: bounds.minX + 116.58, y: bounds.maxY - 32.17))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 127.71, y: bounds.maxY - 30.17))
        logoPath.line(to: NSPoint(x: bounds.minX + 127.71, y: bounds.maxY - 30.22))
        logoPath.curve(to: NSPoint(x: bounds.minX + 131.33, y: bounds.maxY - 33.31), controlPoint1: NSPoint(x: bounds.minX + 127.86, y: bounds.maxY - 32.22), controlPoint2: NSPoint(x: bounds.minX + 129.57, y: bounds.maxY - 33.31))
        logoPath.curve(to: NSPoint(x: bounds.minX + 135.09, y: bounds.maxY - 32.22), controlPoint1: NSPoint(x: bounds.minX + 132.87, y: bounds.maxY - 33.31), controlPoint2: NSPoint(x: bounds.minX + 133.98, y: bounds.maxY - 32.95))
        logoPath.line(to: NSPoint(x: bounds.minX + 135.09, y: bounds.maxY - 34.42))
        logoPath.curve(to: NSPoint(x: bounds.minX + 131.15, y: bounds.maxY - 35.46), controlPoint1: NSPoint(x: bounds.minX + 134.08, y: bounds.maxY - 35.13), controlPoint2: NSPoint(x: bounds.minX + 132.59, y: bounds.maxY - 35.46))
        logoPath.curve(to: NSPoint(x: bounds.minX + 125.28, y: bounds.maxY - 29.69), controlPoint1: NSPoint(x: bounds.minX + 127.65, y: bounds.maxY - 35.46), controlPoint2: NSPoint(x: bounds.minX + 125.28, y: bounds.maxY - 33.23))
        logoPath.curve(to: NSPoint(x: bounds.minX + 130.69, y: bounds.maxY - 23.75), controlPoint1: NSPoint(x: bounds.minX + 125.28, y: bounds.maxY - 26.13), controlPoint2: NSPoint(x: bounds.minX + 127.61, y: bounds.maxY - 23.75))
        logoPath.curve(to: NSPoint(x: bounds.minX + 135.5, y: bounds.maxY - 28.91), controlPoint1: NSPoint(x: bounds.minX + 133.96, y: bounds.maxY - 23.75), controlPoint2: NSPoint(x: bounds.minX + 135.5, y: bounds.maxY - 25.85))
        logoPath.line(to: NSPoint(x: bounds.minX + 135.5, y: bounds.maxY - 30.17))
        logoPath.line(to: NSPoint(x: bounds.minX + 127.7, y: bounds.maxY - 30.17))
        logoPath.line(to: NSPoint(x: bounds.minX + 127.71, y: bounds.maxY - 30.17))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 133.15, y: bounds.maxY - 28.55))
        logoPath.curve(to: NSPoint(x: bounds.minX + 130.61, y: bounds.maxY - 25.85), controlPoint1: NSPoint(x: bounds.minX + 133.09, y: bounds.maxY - 26.81), controlPoint2: NSPoint(x: bounds.minX + 132.23, y: bounds.maxY - 25.85))
        logoPath.curve(to: NSPoint(x: bounds.minX + 127.78, y: bounds.maxY - 28.55), controlPoint1: NSPoint(x: bounds.minX + 129.17, y: bounds.maxY - 25.85), controlPoint2: NSPoint(x: bounds.minX + 128.11, y: bounds.maxY - 26.86))
        logoPath.line(to: NSPoint(x: bounds.minX + 133.15, y: bounds.maxY - 28.55))
        logoPath.close()
        fillColor4.setFill()
        logoPath.fill()
    }
    
    public static func drawGdaxButton(bounds: NSRect = NSRect(x: 0, y: 0, width: 191, height: 56), original: Bool = true, hover: Bool = false, pressed: Bool = false) {
        //// General Declarations
        let context = NSGraphicsContext.current!.cgContext
        
        //// Color Declarations
        let highlightGradientColor = NSColor(red: 1, green: 1, blue: 1, alpha: 0.09)
        let highlightGradientColor2 = NSColor(red: 1, green: 1, blue: 1, alpha: 0)
        let shadow2Color = NSColor(red: 1, green: 1, blue: 1, alpha: 0.36)
        let logoWhite = NSColor(red: 1, green: 1, blue: 1, alpha: 1)
        let gdaxBackground = NSColor(red: 0.181, green: 0.244, blue: 0.315, alpha: 1)
        let gdaxLogoBackground = NSColor(red: 0.384, green: 0.626, blue: 0.832, alpha: 1)
        
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
    
    public static func drawPoloniexButton(bounds: NSRect = NSRect(x: 0, y: 0, width: 191, height: 56), original: Bool = true, hover: Bool = false, pressed: Bool = false) {
        //// General Declarations
        let context = NSGraphicsContext.current!.cgContext
        
        //// Color Declarations
        let highlightGradientColor = NSColor(red: 1, green: 1, blue: 1, alpha: 0.09)
        let highlightGradientColor2 = NSColor(red: 1, green: 1, blue: 1, alpha: 0)
        let shadow2Color = NSColor(red: 1, green: 1, blue: 1, alpha: 0.36)
        let logoWhite = NSColor(red: 1, green: 1, blue: 1, alpha: 1)
        let poloniexBackground = NSColor(red: 0, green: 0.453, blue: 0.476, alpha: 1)
        
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
        logoPath.move(to: NSPoint(x: bounds.minX + 135.7, y: bounds.maxY - 26.34))
        logoPath.line(to: NSPoint(x: bounds.minX + 133.68, y: bounds.maxY - 23.38))
        logoPath.line(to: NSPoint(x: bounds.minX + 135.37, y: bounds.maxY - 20.9))
        logoPath.line(to: NSPoint(x: bounds.minX + 139.3, y: bounds.maxY - 20.9))
        logoPath.line(to: NSPoint(x: bounds.minX + 135.7, y: bounds.maxY - 26.34))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 135.69, y: bounds.maxY - 28.86))
        logoPath.line(to: NSPoint(x: bounds.minX + 139.5, y: bounds.maxY - 34.33))
        logoPath.line(to: NSPoint(x: bounds.minX + 135.58, y: bounds.maxY - 34.33))
        logoPath.line(to: NSPoint(x: bounds.minX + 133.68, y: bounds.maxY - 31.67))
        logoPath.line(to: NSPoint(x: bounds.minX + 135.69, y: bounds.maxY - 28.86))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 58.53, y: bounds.maxY - 20.9))
        logoPath.curve(to: NSPoint(x: bounds.minX + 61.4, y: bounds.maxY - 21.89), controlPoint1: NSPoint(x: bounds.minX + 59.84, y: bounds.maxY - 20.9), controlPoint2: NSPoint(x: bounds.minX + 60.79, y: bounds.maxY - 21.23))
        logoPath.curve(to: NSPoint(x: bounds.minX + 62.32, y: bounds.maxY - 25.25), controlPoint1: NSPoint(x: bounds.minX + 62.02, y: bounds.maxY - 22.54), controlPoint2: NSPoint(x: bounds.minX + 62.32, y: bounds.maxY - 23.95))
        logoPath.curve(to: NSPoint(x: bounds.minX + 61.37, y: bounds.maxY - 28.82), controlPoint1: NSPoint(x: bounds.minX + 62.32, y: bounds.maxY - 26.58), controlPoint2: NSPoint(x: bounds.minX + 62, y: bounds.maxY - 28.16))
        logoPath.curve(to: NSPoint(x: bounds.minX + 58.53, y: bounds.maxY - 29.8), controlPoint1: NSPoint(x: bounds.minX + 60.73, y: bounds.maxY - 29.47), controlPoint2: NSPoint(x: bounds.minX + 59.78, y: bounds.maxY - 29.8))
        logoPath.line(to: NSPoint(x: bounds.minX + 54.52, y: bounds.maxY - 29.8))
        logoPath.line(to: NSPoint(x: bounds.minX + 54.52, y: bounds.maxY - 34.33))
        logoPath.line(to: NSPoint(x: bounds.minX + 51.5, y: bounds.maxY - 34.33))
        logoPath.line(to: NSPoint(x: bounds.minX + 51.5, y: bounds.maxY - 20.9))
        logoPath.line(to: NSPoint(x: bounds.minX + 58.53, y: bounds.maxY - 20.9))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 63.33, y: bounds.maxY - 25.33))
        logoPath.curve(to: NSPoint(x: bounds.minX + 63.62, y: bounds.maxY - 23.24), controlPoint1: NSPoint(x: bounds.minX + 63.33, y: bounds.maxY - 24.52), controlPoint2: NSPoint(x: bounds.minX + 63.42, y: bounds.maxY - 23.82))
        logoPath.curve(to: NSPoint(x: bounds.minX + 64.53, y: bounds.maxY - 21.82), controlPoint1: NSPoint(x: bounds.minX + 63.82, y: bounds.maxY - 22.66), controlPoint2: NSPoint(x: bounds.minX + 64.12, y: bounds.maxY - 22.18))
        logoPath.curve(to: NSPoint(x: bounds.minX + 66.11, y: bounds.maxY - 21.01), controlPoint1: NSPoint(x: bounds.minX + 64.94, y: bounds.maxY - 21.45), controlPoint2: NSPoint(x: bounds.minX + 65.47, y: bounds.maxY - 21.18))
        logoPath.curve(to: NSPoint(x: bounds.minX + 68.4, y: bounds.maxY - 20.75), controlPoint1: NSPoint(x: bounds.minX + 66.75, y: bounds.maxY - 20.84), controlPoint2: NSPoint(x: bounds.minX + 67.51, y: bounds.maxY - 20.75))
        logoPath.line(to: NSPoint(x: bounds.minX + 69.84, y: bounds.maxY - 20.75))
        logoPath.curve(to: NSPoint(x: bounds.minX + 72.14, y: bounds.maxY - 21), controlPoint1: NSPoint(x: bounds.minX + 70.73, y: bounds.maxY - 20.75), controlPoint2: NSPoint(x: bounds.minX + 71.5, y: bounds.maxY - 20.83))
        logoPath.curve(to: NSPoint(x: bounds.minX + 73.71, y: bounds.maxY - 21.8), controlPoint1: NSPoint(x: bounds.minX + 72.78, y: bounds.maxY - 21.17), controlPoint2: NSPoint(x: bounds.minX + 73.3, y: bounds.maxY - 21.44))
        logoPath.curve(to: NSPoint(x: bounds.minX + 74.61, y: bounds.maxY - 23.23), controlPoint1: NSPoint(x: bounds.minX + 74.12, y: bounds.maxY - 22.17), controlPoint2: NSPoint(x: bounds.minX + 74.42, y: bounds.maxY - 22.64))
        logoPath.curve(to: NSPoint(x: bounds.minX + 74.9, y: bounds.maxY - 25.33), controlPoint1: NSPoint(x: bounds.minX + 74.8, y: bounds.maxY - 23.81), controlPoint2: NSPoint(x: bounds.minX + 74.9, y: bounds.maxY - 24.51))
        logoPath.line(to: NSPoint(x: bounds.minX + 74.9, y: bounds.maxY - 29.53))
        logoPath.curve(to: NSPoint(x: bounds.minX + 74.61, y: bounds.maxY - 32), controlPoint1: NSPoint(x: bounds.minX + 74.9, y: bounds.maxY - 30.35), controlPoint2: NSPoint(x: bounds.minX + 74.8, y: bounds.maxY - 31.42))
        logoPath.curve(to: NSPoint(x: bounds.minX + 73.7, y: bounds.maxY - 33.42), controlPoint1: NSPoint(x: bounds.minX + 74.41, y: bounds.maxY - 32.58), controlPoint2: NSPoint(x: bounds.minX + 74.11, y: bounds.maxY - 33.05))
        logoPath.curve(to: NSPoint(x: bounds.minX + 72.13, y: bounds.maxY - 34.23), controlPoint1: NSPoint(x: bounds.minX + 73.29, y: bounds.maxY - 33.79), controlPoint2: NSPoint(x: bounds.minX + 72.77, y: bounds.maxY - 34.06))
        logoPath.curve(to: NSPoint(x: bounds.minX + 69.84, y: bounds.maxY - 34.49), controlPoint1: NSPoint(x: bounds.minX + 71.49, y: bounds.maxY - 34.4), controlPoint2: NSPoint(x: bounds.minX + 70.73, y: bounds.maxY - 34.49))
        logoPath.line(to: NSPoint(x: bounds.minX + 68.4, y: bounds.maxY - 34.49))
        logoPath.curve(to: NSPoint(x: bounds.minX + 66.11, y: bounds.maxY - 34.23), controlPoint1: NSPoint(x: bounds.minX + 67.51, y: bounds.maxY - 34.49), controlPoint2: NSPoint(x: bounds.minX + 66.75, y: bounds.maxY - 34.4))
        logoPath.curve(to: NSPoint(x: bounds.minX + 64.53, y: bounds.maxY - 33.42), controlPoint1: NSPoint(x: bounds.minX + 65.47, y: bounds.maxY - 34.06), controlPoint2: NSPoint(x: bounds.minX + 64.94, y: bounds.maxY - 33.79))
        logoPath.curve(to: NSPoint(x: bounds.minX + 63.62, y: bounds.maxY - 32), controlPoint1: NSPoint(x: bounds.minX + 64.12, y: bounds.maxY - 33.05), controlPoint2: NSPoint(x: bounds.minX + 63.82, y: bounds.maxY - 32.58))
        logoPath.curve(to: NSPoint(x: bounds.minX + 63.33, y: bounds.maxY - 29.53), controlPoint1: NSPoint(x: bounds.minX + 63.42, y: bounds.maxY - 31.42), controlPoint2: NSPoint(x: bounds.minX + 63.33, y: bounds.maxY - 30.35))
        logoPath.line(to: NSPoint(x: bounds.minX + 63.33, y: bounds.maxY - 25.33))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 79.17, y: bounds.maxY - 31.75))
        logoPath.line(to: NSPoint(x: bounds.minX + 84.33, y: bounds.maxY - 31.75))
        logoPath.line(to: NSPoint(x: bounds.minX + 84.33, y: bounds.maxY - 34.33))
        logoPath.line(to: NSPoint(x: bounds.minX + 76.16, y: bounds.maxY - 34.33))
        logoPath.line(to: NSPoint(x: bounds.minX + 76.16, y: bounds.maxY - 20.9))
        logoPath.line(to: NSPoint(x: bounds.minX + 79.17, y: bounds.maxY - 20.9))
        logoPath.line(to: NSPoint(x: bounds.minX + 79.17, y: bounds.maxY - 31.75))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 84.98, y: bounds.maxY - 25.33))
        logoPath.curve(to: NSPoint(x: bounds.minX + 85.27, y: bounds.maxY - 23.24), controlPoint1: NSPoint(x: bounds.minX + 84.98, y: bounds.maxY - 24.52), controlPoint2: NSPoint(x: bounds.minX + 85.08, y: bounds.maxY - 23.82))
        logoPath.curve(to: NSPoint(x: bounds.minX + 86.19, y: bounds.maxY - 21.82), controlPoint1: NSPoint(x: bounds.minX + 85.47, y: bounds.maxY - 22.66), controlPoint2: NSPoint(x: bounds.minX + 85.77, y: bounds.maxY - 22.18))
        logoPath.curve(to: NSPoint(x: bounds.minX + 87.76, y: bounds.maxY - 21.01), controlPoint1: NSPoint(x: bounds.minX + 86.6, y: bounds.maxY - 21.45), controlPoint2: NSPoint(x: bounds.minX + 87.12, y: bounds.maxY - 21.18))
        logoPath.curve(to: NSPoint(x: bounds.minX + 90.06, y: bounds.maxY - 20.75), controlPoint1: NSPoint(x: bounds.minX + 88.4, y: bounds.maxY - 20.84), controlPoint2: NSPoint(x: bounds.minX + 89.17, y: bounds.maxY - 20.75))
        logoPath.line(to: NSPoint(x: bounds.minX + 91.49, y: bounds.maxY - 20.75))
        logoPath.curve(to: NSPoint(x: bounds.minX + 93.79, y: bounds.maxY - 21), controlPoint1: NSPoint(x: bounds.minX + 92.39, y: bounds.maxY - 20.75), controlPoint2: NSPoint(x: bounds.minX + 93.15, y: bounds.maxY - 20.83))
        logoPath.curve(to: NSPoint(x: bounds.minX + 95.37, y: bounds.maxY - 21.8), controlPoint1: NSPoint(x: bounds.minX + 94.43, y: bounds.maxY - 21.17), controlPoint2: NSPoint(x: bounds.minX + 94.96, y: bounds.maxY - 21.44))
        logoPath.curve(to: NSPoint(x: bounds.minX + 96.26, y: bounds.maxY - 23.23), controlPoint1: NSPoint(x: bounds.minX + 95.77, y: bounds.maxY - 22.17), controlPoint2: NSPoint(x: bounds.minX + 96.07, y: bounds.maxY - 22.64))
        logoPath.curve(to: NSPoint(x: bounds.minX + 96.55, y: bounds.maxY - 25.33), controlPoint1: NSPoint(x: bounds.minX + 96.46, y: bounds.maxY - 23.81), controlPoint2: NSPoint(x: bounds.minX + 96.55, y: bounds.maxY - 24.51))
        logoPath.line(to: NSPoint(x: bounds.minX + 96.55, y: bounds.maxY - 29.53))
        logoPath.curve(to: NSPoint(x: bounds.minX + 96.26, y: bounds.maxY - 32), controlPoint1: NSPoint(x: bounds.minX + 96.55, y: bounds.maxY - 30.35), controlPoint2: NSPoint(x: bounds.minX + 96.45, y: bounds.maxY - 31.42))
        logoPath.curve(to: NSPoint(x: bounds.minX + 95.36, y: bounds.maxY - 33.42), controlPoint1: NSPoint(x: bounds.minX + 96.07, y: bounds.maxY - 32.58), controlPoint2: NSPoint(x: bounds.minX + 95.77, y: bounds.maxY - 33.05))
        logoPath.curve(to: NSPoint(x: bounds.minX + 93.78, y: bounds.maxY - 34.23), controlPoint1: NSPoint(x: bounds.minX + 94.95, y: bounds.maxY - 33.79), controlPoint2: NSPoint(x: bounds.minX + 94.42, y: bounds.maxY - 34.06))
        logoPath.curve(to: NSPoint(x: bounds.minX + 91.49, y: bounds.maxY - 34.49), controlPoint1: NSPoint(x: bounds.minX + 93.15, y: bounds.maxY - 34.4), controlPoint2: NSPoint(x: bounds.minX + 92.38, y: bounds.maxY - 34.49))
        logoPath.line(to: NSPoint(x: bounds.minX + 90.06, y: bounds.maxY - 34.49))
        logoPath.curve(to: NSPoint(x: bounds.minX + 87.76, y: bounds.maxY - 34.23), controlPoint1: NSPoint(x: bounds.minX + 89.17, y: bounds.maxY - 34.49), controlPoint2: NSPoint(x: bounds.minX + 88.4, y: bounds.maxY - 34.4))
        logoPath.curve(to: NSPoint(x: bounds.minX + 86.19, y: bounds.maxY - 33.42), controlPoint1: NSPoint(x: bounds.minX + 87.12, y: bounds.maxY - 34.06), controlPoint2: NSPoint(x: bounds.minX + 86.6, y: bounds.maxY - 33.79))
        logoPath.curve(to: NSPoint(x: bounds.minX + 85.27, y: bounds.maxY - 32), controlPoint1: NSPoint(x: bounds.minX + 85.77, y: bounds.maxY - 33.05), controlPoint2: NSPoint(x: bounds.minX + 85.47, y: bounds.maxY - 32.58))
        logoPath.curve(to: NSPoint(x: bounds.minX + 84.98, y: bounds.maxY - 29.53), controlPoint1: NSPoint(x: bounds.minX + 85.08, y: bounds.maxY - 31.42), controlPoint2: NSPoint(x: bounds.minX + 84.98, y: bounds.maxY - 30.35))
        logoPath.line(to: NSPoint(x: bounds.minX + 84.98, y: bounds.maxY - 25.33))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 97.98, y: bounds.maxY - 20.9))
        logoPath.line(to: NSPoint(x: bounds.minX + 101.45, y: bounds.maxY - 20.9))
        logoPath.line(to: NSPoint(x: bounds.minX + 106.47, y: bounds.maxY - 30.07))
        logoPath.line(to: NSPoint(x: bounds.minX + 106.47, y: bounds.maxY - 20.9))
        logoPath.line(to: NSPoint(x: bounds.minX + 109.3, y: bounds.maxY - 20.9))
        logoPath.line(to: NSPoint(x: bounds.minX + 109.3, y: bounds.maxY - 34.33))
        logoPath.line(to: NSPoint(x: bounds.minX + 105.84, y: bounds.maxY - 34.33))
        logoPath.line(to: NSPoint(x: bounds.minX + 100.81, y: bounds.maxY - 25.06))
        logoPath.line(to: NSPoint(x: bounds.minX + 100.81, y: bounds.maxY - 34.33))
        logoPath.line(to: NSPoint(x: bounds.minX + 97.98, y: bounds.maxY - 34.33))
        logoPath.line(to: NSPoint(x: bounds.minX + 97.98, y: bounds.maxY - 20.9))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 111.14, y: bounds.maxY - 34.33))
        logoPath.line(to: NSPoint(x: bounds.minX + 111.14, y: bounds.maxY - 20.9))
        logoPath.line(to: NSPoint(x: bounds.minX + 114.15, y: bounds.maxY - 20.9))
        logoPath.line(to: NSPoint(x: bounds.minX + 114.15, y: bounds.maxY - 34.33))
        logoPath.line(to: NSPoint(x: bounds.minX + 111.14, y: bounds.maxY - 34.33))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 115.97, y: bounds.maxY - 20.9))
        logoPath.line(to: NSPoint(x: bounds.minX + 125.25, y: bounds.maxY - 20.9))
        logoPath.line(to: NSPoint(x: bounds.minX + 125.25, y: bounds.maxY - 23.49))
        logoPath.line(to: NSPoint(x: bounds.minX + 118.99, y: bounds.maxY - 23.49))
        logoPath.line(to: NSPoint(x: bounds.minX + 118.99, y: bounds.maxY - 26.23))
        logoPath.line(to: NSPoint(x: bounds.minX + 125.04, y: bounds.maxY - 26.23))
        logoPath.line(to: NSPoint(x: bounds.minX + 125.04, y: bounds.maxY - 28.8))
        logoPath.line(to: NSPoint(x: bounds.minX + 118.99, y: bounds.maxY - 28.8))
        logoPath.line(to: NSPoint(x: bounds.minX + 118.99, y: bounds.maxY - 31.75))
        logoPath.line(to: NSPoint(x: bounds.minX + 125.25, y: bounds.maxY - 31.75))
        logoPath.line(to: NSPoint(x: bounds.minX + 125.25, y: bounds.maxY - 34.33))
        logoPath.line(to: NSPoint(x: bounds.minX + 115.97, y: bounds.maxY - 34.33))
        logoPath.line(to: NSPoint(x: bounds.minX + 115.97, y: bounds.maxY - 20.9))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 134.8, y: bounds.maxY - 27.62))
        logoPath.line(to: NSPoint(x: bounds.minX + 129.98, y: bounds.maxY - 34.33))
        logoPath.line(to: NSPoint(x: bounds.minX + 126.07, y: bounds.maxY - 34.33))
        logoPath.line(to: NSPoint(x: bounds.minX + 130.74, y: bounds.maxY - 27.63))
        logoPath.line(to: NSPoint(x: bounds.minX + 126.28, y: bounds.maxY - 20.9))
        logoPath.line(to: NSPoint(x: bounds.minX + 130.21, y: bounds.maxY - 20.9))
        logoPath.line(to: NSPoint(x: bounds.minX + 134.8, y: bounds.maxY - 27.62))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 54.52, y: bounds.maxY - 23.19))
        logoPath.line(to: NSPoint(x: bounds.minX + 54.52, y: bounds.maxY - 27.53))
        logoPath.line(to: NSPoint(x: bounds.minX + 57.56, y: bounds.maxY - 27.53))
        logoPath.curve(to: NSPoint(x: bounds.minX + 58.4, y: bounds.maxY - 27.44), controlPoint1: NSPoint(x: bounds.minX + 57.9, y: bounds.maxY - 27.53), controlPoint2: NSPoint(x: bounds.minX + 58.18, y: bounds.maxY - 27.5))
        logoPath.curve(to: NSPoint(x: bounds.minX + 58.93, y: bounds.maxY - 27.15), controlPoint1: NSPoint(x: bounds.minX + 58.62, y: bounds.maxY - 27.37), controlPoint2: NSPoint(x: bounds.minX + 58.8, y: bounds.maxY - 27.28))
        logoPath.curve(to: NSPoint(x: bounds.minX + 59.2, y: bounds.maxY - 26.63), controlPoint1: NSPoint(x: bounds.minX + 59.06, y: bounds.maxY - 27.02), controlPoint2: NSPoint(x: bounds.minX + 59.15, y: bounds.maxY - 26.84))
        logoPath.curve(to: NSPoint(x: bounds.minX + 59.28, y: bounds.maxY - 24.87), controlPoint1: NSPoint(x: bounds.minX + 59.25, y: bounds.maxY - 26.42), controlPoint2: NSPoint(x: bounds.minX + 59.28, y: bounds.maxY - 25.16))
        logoPath.curve(to: NSPoint(x: bounds.minX + 59.21, y: bounds.maxY - 24.11), controlPoint1: NSPoint(x: bounds.minX + 59.28, y: bounds.maxY - 24.58), controlPoint2: NSPoint(x: bounds.minX + 59.26, y: bounds.maxY - 24.32))
        logoPath.curve(to: NSPoint(x: bounds.minX + 58.95, y: bounds.maxY - 23.59), controlPoint1: NSPoint(x: bounds.minX + 59.16, y: bounds.maxY - 23.9), controlPoint2: NSPoint(x: bounds.minX + 59.08, y: bounds.maxY - 23.72))
        logoPath.curve(to: NSPoint(x: bounds.minX + 58.41, y: bounds.maxY - 23.28), controlPoint1: NSPoint(x: bounds.minX + 58.82, y: bounds.maxY - 23.45), controlPoint2: NSPoint(x: bounds.minX + 58.64, y: bounds.maxY - 23.35))
        logoPath.curve(to: NSPoint(x: bounds.minX + 57.5, y: bounds.maxY - 23.19), controlPoint1: NSPoint(x: bounds.minX + 58.17, y: bounds.maxY - 23.22), controlPoint2: NSPoint(x: bounds.minX + 57.87, y: bounds.maxY - 23.19))
        logoPath.line(to: NSPoint(x: bounds.minX + 54.52, y: bounds.maxY - 23.19))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 69.01, y: bounds.maxY - 23.33))
        logoPath.curve(to: NSPoint(x: bounds.minX + 67.81, y: bounds.maxY - 23.43), controlPoint1: NSPoint(x: bounds.minX + 68.54, y: bounds.maxY - 23.33), controlPoint2: NSPoint(x: bounds.minX + 68.13, y: bounds.maxY - 23.36))
        logoPath.curve(to: NSPoint(x: bounds.minX + 67, y: bounds.maxY - 23.8), controlPoint1: NSPoint(x: bounds.minX + 67.48, y: bounds.maxY - 23.5), controlPoint2: NSPoint(x: bounds.minX + 67.21, y: bounds.maxY - 23.62))
        logoPath.curve(to: NSPoint(x: bounds.minX + 66.54, y: bounds.maxY - 24.58), controlPoint1: NSPoint(x: bounds.minX + 66.79, y: bounds.maxY - 23.99), controlPoint2: NSPoint(x: bounds.minX + 66.64, y: bounds.maxY - 24.25))
        logoPath.curve(to: NSPoint(x: bounds.minX + 66.4, y: bounds.maxY - 26.27), controlPoint1: NSPoint(x: bounds.minX + 66.45, y: bounds.maxY - 24.92), controlPoint2: NSPoint(x: bounds.minX + 66.4, y: bounds.maxY - 25.73))
        logoPath.line(to: NSPoint(x: bounds.minX + 66.4, y: bounds.maxY - 28.99))
        logoPath.curve(to: NSPoint(x: bounds.minX + 66.54, y: bounds.maxY - 30.67), controlPoint1: NSPoint(x: bounds.minX + 66.4, y: bounds.maxY - 29.53), controlPoint2: NSPoint(x: bounds.minX + 66.45, y: bounds.maxY - 30.33))
        logoPath.curve(to: NSPoint(x: bounds.minX + 67, y: bounds.maxY - 31.45), controlPoint1: NSPoint(x: bounds.minX + 66.64, y: bounds.maxY - 31), controlPoint2: NSPoint(x: bounds.minX + 66.79, y: bounds.maxY - 31.26))
        logoPath.curve(to: NSPoint(x: bounds.minX + 67.81, y: bounds.maxY - 31.82), controlPoint1: NSPoint(x: bounds.minX + 67.21, y: bounds.maxY - 31.63), controlPoint2: NSPoint(x: bounds.minX + 67.48, y: bounds.maxY - 31.76))
        logoPath.curve(to: NSPoint(x: bounds.minX + 69.01, y: bounds.maxY - 31.92), controlPoint1: NSPoint(x: bounds.minX + 68.13, y: bounds.maxY - 31.89), controlPoint2: NSPoint(x: bounds.minX + 68.54, y: bounds.maxY - 31.92))
        logoPath.line(to: NSPoint(x: bounds.minX + 69.21, y: bounds.maxY - 31.92))
        logoPath.curve(to: NSPoint(x: bounds.minX + 70.42, y: bounds.maxY - 31.82), controlPoint1: NSPoint(x: bounds.minX + 69.68, y: bounds.maxY - 31.92), controlPoint2: NSPoint(x: bounds.minX + 70.09, y: bounds.maxY - 31.89))
        logoPath.curve(to: NSPoint(x: bounds.minX + 71.22, y: bounds.maxY - 31.45), controlPoint1: NSPoint(x: bounds.minX + 70.75, y: bounds.maxY - 31.76), controlPoint2: NSPoint(x: bounds.minX + 71.02, y: bounds.maxY - 31.63))
        logoPath.curve(to: NSPoint(x: bounds.minX + 71.68, y: bounds.maxY - 30.67), controlPoint1: NSPoint(x: bounds.minX + 71.43, y: bounds.maxY - 31.27), controlPoint2: NSPoint(x: bounds.minX + 71.59, y: bounds.maxY - 31.01))
        logoPath.curve(to: NSPoint(x: bounds.minX + 71.82, y: bounds.maxY - 28.99), controlPoint1: NSPoint(x: bounds.minX + 71.77, y: bounds.maxY - 30.34), controlPoint2: NSPoint(x: bounds.minX + 71.82, y: bounds.maxY - 29.53))
        logoPath.line(to: NSPoint(x: bounds.minX + 71.82, y: bounds.maxY - 26.25))
        logoPath.curve(to: NSPoint(x: bounds.minX + 71.68, y: bounds.maxY - 24.57), controlPoint1: NSPoint(x: bounds.minX + 71.82, y: bounds.maxY - 25.71), controlPoint2: NSPoint(x: bounds.minX + 71.77, y: bounds.maxY - 24.9))
        logoPath.curve(to: NSPoint(x: bounds.minX + 71.23, y: bounds.maxY - 23.8), controlPoint1: NSPoint(x: bounds.minX + 71.59, y: bounds.maxY - 24.24), controlPoint2: NSPoint(x: bounds.minX + 71.44, y: bounds.maxY - 23.98))
        logoPath.curve(to: NSPoint(x: bounds.minX + 70.42, y: bounds.maxY - 23.43), controlPoint1: NSPoint(x: bounds.minX + 71.02, y: bounds.maxY - 23.61), controlPoint2: NSPoint(x: bounds.minX + 70.75, y: bounds.maxY - 23.49))
        logoPath.curve(to: NSPoint(x: bounds.minX + 69.21, y: bounds.maxY - 23.33), controlPoint1: NSPoint(x: bounds.minX + 70.09, y: bounds.maxY - 23.36), controlPoint2: NSPoint(x: bounds.minX + 69.68, y: bounds.maxY - 23.33))
        logoPath.line(to: NSPoint(x: bounds.minX + 69.01, y: bounds.maxY - 23.33))
        logoPath.close()
        logoPath.move(to: NSPoint(x: bounds.minX + 90.67, y: bounds.maxY - 23.33))
        logoPath.curve(to: NSPoint(x: bounds.minX + 89.46, y: bounds.maxY - 23.43), controlPoint1: NSPoint(x: bounds.minX + 90.19, y: bounds.maxY - 23.33), controlPoint2: NSPoint(x: bounds.minX + 89.79, y: bounds.maxY - 23.36))
        logoPath.curve(to: NSPoint(x: bounds.minX + 88.65, y: bounds.maxY - 23.8), controlPoint1: NSPoint(x: bounds.minX + 89.13, y: bounds.maxY - 23.5), controlPoint2: NSPoint(x: bounds.minX + 88.86, y: bounds.maxY - 23.62))
        logoPath.curve(to: NSPoint(x: bounds.minX + 88.2, y: bounds.maxY - 24.58), controlPoint1: NSPoint(x: bounds.minX + 88.44, y: bounds.maxY - 23.99), controlPoint2: NSPoint(x: bounds.minX + 88.29, y: bounds.maxY - 24.25))
        logoPath.curve(to: NSPoint(x: bounds.minX + 88.06, y: bounds.maxY - 26.27), controlPoint1: NSPoint(x: bounds.minX + 88.1, y: bounds.maxY - 24.92), controlPoint2: NSPoint(x: bounds.minX + 88.06, y: bounds.maxY - 25.73))
        logoPath.line(to: NSPoint(x: bounds.minX + 88.06, y: bounds.maxY - 28.99))
        logoPath.curve(to: NSPoint(x: bounds.minX + 88.2, y: bounds.maxY - 30.67), controlPoint1: NSPoint(x: bounds.minX + 88.06, y: bounds.maxY - 29.53), controlPoint2: NSPoint(x: bounds.minX + 88.1, y: bounds.maxY - 30.33))
        logoPath.curve(to: NSPoint(x: bounds.minX + 88.65, y: bounds.maxY - 31.45), controlPoint1: NSPoint(x: bounds.minX + 88.29, y: bounds.maxY - 31), controlPoint2: NSPoint(x: bounds.minX + 88.44, y: bounds.maxY - 31.26))
        logoPath.curve(to: NSPoint(x: bounds.minX + 89.46, y: bounds.maxY - 31.82), controlPoint1: NSPoint(x: bounds.minX + 88.86, y: bounds.maxY - 31.63), controlPoint2: NSPoint(x: bounds.minX + 89.13, y: bounds.maxY - 31.76))
        logoPath.curve(to: NSPoint(x: bounds.minX + 90.67, y: bounds.maxY - 31.92), controlPoint1: NSPoint(x: bounds.minX + 89.79, y: bounds.maxY - 31.89), controlPoint2: NSPoint(x: bounds.minX + 90.19, y: bounds.maxY - 31.92))
        logoPath.line(to: NSPoint(x: bounds.minX + 90.86, y: bounds.maxY - 31.92))
        logoPath.curve(to: NSPoint(x: bounds.minX + 92.07, y: bounds.maxY - 31.82), controlPoint1: NSPoint(x: bounds.minX + 91.34, y: bounds.maxY - 31.92), controlPoint2: NSPoint(x: bounds.minX + 91.74, y: bounds.maxY - 31.89))
        logoPath.curve(to: NSPoint(x: bounds.minX + 92.88, y: bounds.maxY - 31.45), controlPoint1: NSPoint(x: bounds.minX + 92.4, y: bounds.maxY - 31.76), controlPoint2: NSPoint(x: bounds.minX + 92.67, y: bounds.maxY - 31.63))
        logoPath.curve(to: NSPoint(x: bounds.minX + 93.33, y: bounds.maxY - 30.67), controlPoint1: NSPoint(x: bounds.minX + 93.09, y: bounds.maxY - 31.27), controlPoint2: NSPoint(x: bounds.minX + 93.24, y: bounds.maxY - 31.01))
        logoPath.curve(to: NSPoint(x: bounds.minX + 93.47, y: bounds.maxY - 28.99), controlPoint1: NSPoint(x: bounds.minX + 93.43, y: bounds.maxY - 30.34), controlPoint2: NSPoint(x: bounds.minX + 93.47, y: bounds.maxY - 29.53))
        logoPath.line(to: NSPoint(x: bounds.minX + 93.47, y: bounds.maxY - 26.25))
        logoPath.curve(to: NSPoint(x: bounds.minX + 93.33, y: bounds.maxY - 24.57), controlPoint1: NSPoint(x: bounds.minX + 93.47, y: bounds.maxY - 25.71), controlPoint2: NSPoint(x: bounds.minX + 93.43, y: bounds.maxY - 24.9))
        logoPath.curve(to: NSPoint(x: bounds.minX + 92.88, y: bounds.maxY - 23.8), controlPoint1: NSPoint(x: bounds.minX + 93.24, y: bounds.maxY - 24.24), controlPoint2: NSPoint(x: bounds.minX + 93.09, y: bounds.maxY - 23.98))
        logoPath.curve(to: NSPoint(x: bounds.minX + 92.07, y: bounds.maxY - 23.43), controlPoint1: NSPoint(x: bounds.minX + 92.68, y: bounds.maxY - 23.61), controlPoint2: NSPoint(x: bounds.minX + 92.41, y: bounds.maxY - 23.49))
        logoPath.curve(to: NSPoint(x: bounds.minX + 90.86, y: bounds.maxY - 23.33), controlPoint1: NSPoint(x: bounds.minX + 91.74, y: bounds.maxY - 23.36), controlPoint2: NSPoint(x: bounds.minX + 91.34, y: bounds.maxY - 23.33))
        logoPath.line(to: NSPoint(x: bounds.minX + 90.67, y: bounds.maxY - 23.33))
        logoPath.close()
        logoPath.windingRule = .evenOddWindingRule
        logoWhite.setFill()
        logoPath.fill()
    }
    
    public static func drawBitfinexButton(bounds: NSRect = NSRect(x: 0, y: 0, width: 191, height: 56), original: Bool = true, hover: Bool = false, pressed: Bool = false) {
        //// General Declarations
        let context = NSGraphicsContext.current!.cgContext
        
        //// Color Declarations
        let highlightGradientColor = NSColor(red: 1, green: 1, blue: 1, alpha: 0.09)
        let highlightGradientColor2 = NSColor(red: 1, green: 1, blue: 1, alpha: 0)
        let shadow2Color = NSColor(red: 1, green: 1, blue: 1, alpha: 0.36)
        let fillColor2 = NSColor(red: 1, green: 1, blue: 1, alpha: 1)
        let bitfinexBackground = NSColor(red: 0.652, green: 0.805, blue: 0.398, alpha: 1)
        
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
    
    public static func drawKrakenButton(bounds: NSRect = NSRect(x: 0, y: 0, width: 191, height: 56), original: Bool = true, hover: Bool = false, pressed: Bool = false) {
        //// General Declarations
        let context = NSGraphicsContext.current!.cgContext
        
        //// Color Declarations
        let highlightGradientColor = NSColor(red: 1, green: 1, blue: 1, alpha: 0.09)
        let highlightGradientColor2 = NSColor(red: 1, green: 1, blue: 1, alpha: 0)
        let shadow2Color = NSColor(red: 1, green: 1, blue: 1, alpha: 0.36)
        let krakenBackground = NSColor(red: 0.31, green: 0.431, blue: 0.537, alpha: 1)
        let fillColor4 = NSColor(red: 1, green: 1, blue: 1, alpha: 1)
        
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
            //// kraken
            NSGraphicsContext.saveGraphicsState()
            context.translateBy(x: bounds.minX + 95.5, y: bounds.maxY - 28)
            
            outerShadow.set()
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            
            
            //// krakenBase Drawing
            let krakenBasePath = NSBezierPath(roundedRect: NSRect(x: -88.5, y: -21, width: 177, height: 42), xRadius: 5, yRadius: 5)
            krakenBackground.setFill()
            krakenBasePath.fill()
            
            
            //// krakenHighlight Drawing
            let krakenHighlightPath = NSBezierPath(roundedRect: NSRect(x: -88.5, y: -21, width: 177, height: 42), xRadius: 5, yRadius: 5)
            highlightGradient.draw(in: krakenHighlightPath, angle: -45)
            
            ////// krakenHighlight Inner Shadow
            NSGraphicsContext.saveGraphicsState()
            krakenHighlightPath.bounds.clip()
            context.setShadow(offset: NSSize.zero, blur: 0, color: nil)
            
            context.setAlpha(innerStroke.shadowColor!.alphaComponent)
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            let krakenHighlightOpaqueShadow = NSShadow()
            krakenHighlightOpaqueShadow.shadowColor = innerStroke.shadowColor!.withAlphaComponent(1)
            krakenHighlightOpaqueShadow.shadowOffset = innerStroke.shadowOffset
            krakenHighlightOpaqueShadow.shadowBlurRadius = innerStroke.shadowBlurRadius
            krakenHighlightOpaqueShadow.set()
            
            context.setBlendMode(.sourceOut)
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            
            krakenHighlightOpaqueShadow.shadowColor!.setFill()
            krakenHighlightPath.fill()
            
            context.endTransparencyLayer()
            context.endTransparencyLayer()
            NSGraphicsContext.restoreGraphicsState()
            
            
            
            context.endTransparencyLayer()
            
            NSGraphicsContext.restoreGraphicsState()
        }
        
        
        if (hover) {
            //// krakenHover
            NSGraphicsContext.saveGraphicsState()
            context.translateBy(x: bounds.minX + 95.5, y: bounds.maxY - 28)
            context.scaleBy(x: 1.05, y: 1.05)
            
            outerShadow.set()
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            
            
            //// krakenBase 2 Drawing
            let krakenBase2Path = NSBezierPath(roundedRect: NSRect(x: -88.5, y: -21, width: 177, height: 42), xRadius: 5, yRadius: 5)
            krakenBackground.setFill()
            krakenBase2Path.fill()
            
            
            //// krakenHighlight 2 Drawing
            let krakenHighlight2Path = NSBezierPath(roundedRect: NSRect(x: -88.5, y: -21, width: 177, height: 42), xRadius: 5, yRadius: 5)
            highlightGradient.draw(in: krakenHighlight2Path, angle: -45)
            
            ////// krakenHighlight 2 Inner Shadow
            NSGraphicsContext.saveGraphicsState()
            krakenHighlight2Path.bounds.clip()
            context.setShadow(offset: NSSize.zero, blur: 0, color: nil)
            
            context.setAlpha(innerStroke.shadowColor!.alphaComponent)
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            let krakenHighlight2OpaqueShadow = NSShadow()
            krakenHighlight2OpaqueShadow.shadowColor = innerStroke.shadowColor!.withAlphaComponent(1)
            krakenHighlight2OpaqueShadow.shadowOffset = innerStroke.shadowOffset
            krakenHighlight2OpaqueShadow.shadowBlurRadius = innerStroke.shadowBlurRadius
            krakenHighlight2OpaqueShadow.set()
            
            context.setBlendMode(.sourceOut)
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            
            krakenHighlight2OpaqueShadow.shadowColor!.setFill()
            krakenHighlight2Path.fill()
            
            context.endTransparencyLayer()
            context.endTransparencyLayer()
            NSGraphicsContext.restoreGraphicsState()
            
            
            
            context.endTransparencyLayer()
            
            NSGraphicsContext.restoreGraphicsState()
        }
        
        
        if (pressed) {
            //// krakenPressed
            NSGraphicsContext.saveGraphicsState()
            context.translateBy(x: bounds.minX + 95.5, y: bounds.maxY - 28)
            
            outerShadow.set()
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            
            
            //// krakenBase 3 Drawing
            let krakenBase3Path = NSBezierPath(roundedRect: NSRect(x: -88.5, y: -21, width: 177, height: 42), xRadius: 5, yRadius: 5)
            krakenBackground.setFill()
            krakenBase3Path.fill()
            
            
            //// krakenHighlight 3 Drawing
            let krakenHighlight3Path = NSBezierPath(roundedRect: NSRect(x: -88.5, y: -21, width: 177, height: 42), xRadius: 5, yRadius: 5)
            highlightGradient.draw(in: krakenHighlight3Path, angle: -45)
            
            ////// krakenHighlight 3 Inner Shadow
            NSGraphicsContext.saveGraphicsState()
            krakenHighlight3Path.bounds.clip()
            context.setShadow(offset: NSSize.zero, blur: 0, color: nil)
            
            context.setAlpha(innerStroke.shadowColor!.alphaComponent)
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            let krakenHighlight3OpaqueShadow = NSShadow()
            krakenHighlight3OpaqueShadow.shadowColor = innerStroke.shadowColor!.withAlphaComponent(1)
            krakenHighlight3OpaqueShadow.shadowOffset = innerStroke.shadowOffset
            krakenHighlight3OpaqueShadow.shadowBlurRadius = innerStroke.shadowBlurRadius
            krakenHighlight3OpaqueShadow.set()
            
            context.setBlendMode(.sourceOut)
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            
            krakenHighlight3OpaqueShadow.shadowColor!.setFill()
            krakenHighlight3Path.fill()
            
            context.endTransparencyLayer()
            context.endTransparencyLayer()
            NSGraphicsContext.restoreGraphicsState()
            
            
            
            context.endTransparencyLayer()
            
            NSGraphicsContext.restoreGraphicsState()
        }
        
        
        //// krakenLogo
        //// Combined-Shape Drawing
        let combinedShapePath = NSBezierPath()
        combinedShapePath.move(to: NSPoint(x: bounds.minX + 65.42, y: bounds.maxY - 29.58))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 65.42, y: bounds.maxY - 33.06))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 66.54, y: bounds.maxY - 34.18), controlPoint1: NSPoint(x: bounds.minX + 65.42, y: bounds.maxY - 33.68), controlPoint2: NSPoint(x: bounds.minX + 65.92, y: bounds.maxY - 34.18))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 67.66, y: bounds.maxY - 33.06), controlPoint1: NSPoint(x: bounds.minX + 67.16, y: bounds.maxY - 34.18), controlPoint2: NSPoint(x: bounds.minX + 67.66, y: bounds.maxY - 33.68))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 67.66, y: bounds.maxY - 29.58))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 59.83, y: bounds.maxY - 21.75), controlPoint1: NSPoint(x: bounds.minX + 67.66, y: bounds.maxY - 25.25), controlPoint2: NSPoint(x: bounds.minX + 64.15, y: bounds.maxY - 21.75))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 52, y: bounds.maxY - 29.58), controlPoint1: NSPoint(x: bounds.minX + 55.51, y: bounds.maxY - 21.75), controlPoint2: NSPoint(x: bounds.minX + 52, y: bounds.maxY - 25.25))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 52, y: bounds.maxY - 33.06))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 53.12, y: bounds.maxY - 34.18), controlPoint1: NSPoint(x: bounds.minX + 52, y: bounds.maxY - 33.68), controlPoint2: NSPoint(x: bounds.minX + 52.5, y: bounds.maxY - 34.18))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 54.24, y: bounds.maxY - 33.06), controlPoint1: NSPoint(x: bounds.minX + 53.74, y: bounds.maxY - 34.18), controlPoint2: NSPoint(x: bounds.minX + 54.24, y: bounds.maxY - 33.68))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 54.24, y: bounds.maxY - 29.58))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 55.36, y: bounds.maxY - 28.46), controlPoint1: NSPoint(x: bounds.minX + 54.24, y: bounds.maxY - 28.96), controlPoint2: NSPoint(x: bounds.minX + 54.74, y: bounds.maxY - 28.46))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 56.47, y: bounds.maxY - 29.58), controlPoint1: NSPoint(x: bounds.minX + 55.97, y: bounds.maxY - 28.46), controlPoint2: NSPoint(x: bounds.minX + 56.47, y: bounds.maxY - 28.96))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 56.47, y: bounds.maxY - 33.06))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 57.59, y: bounds.maxY - 34.18), controlPoint1: NSPoint(x: bounds.minX + 56.47, y: bounds.maxY - 33.68), controlPoint2: NSPoint(x: bounds.minX + 56.98, y: bounds.maxY - 34.18))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 58.71, y: bounds.maxY - 33.06), controlPoint1: NSPoint(x: bounds.minX + 58.21, y: bounds.maxY - 34.18), controlPoint2: NSPoint(x: bounds.minX + 58.71, y: bounds.maxY - 33.68))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 58.71, y: bounds.maxY - 29.58))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 59.83, y: bounds.maxY - 28.46), controlPoint1: NSPoint(x: bounds.minX + 58.71, y: bounds.maxY - 28.96), controlPoint2: NSPoint(x: bounds.minX + 59.21, y: bounds.maxY - 28.46))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 60.95, y: bounds.maxY - 29.58), controlPoint1: NSPoint(x: bounds.minX + 60.45, y: bounds.maxY - 28.46), controlPoint2: NSPoint(x: bounds.minX + 60.95, y: bounds.maxY - 28.96))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 60.95, y: bounds.maxY - 33.06))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 62.07, y: bounds.maxY - 34.18), controlPoint1: NSPoint(x: bounds.minX + 60.95, y: bounds.maxY - 33.68), controlPoint2: NSPoint(x: bounds.minX + 61.45, y: bounds.maxY - 34.18))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 63.19, y: bounds.maxY - 33.06), controlPoint1: NSPoint(x: bounds.minX + 62.68, y: bounds.maxY - 34.18), controlPoint2: NSPoint(x: bounds.minX + 63.19, y: bounds.maxY - 33.68))
        combinedShapePath.line(to: NSPoint(x: bounds.minX + 63.19, y: bounds.maxY - 29.58))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 64.3, y: bounds.maxY - 28.46), controlPoint1: NSPoint(x: bounds.minX + 63.19, y: bounds.maxY - 28.96), controlPoint2: NSPoint(x: bounds.minX + 63.69, y: bounds.maxY - 28.46))
        combinedShapePath.curve(to: NSPoint(x: bounds.minX + 65.42, y: bounds.maxY - 29.58), controlPoint1: NSPoint(x: bounds.minX + 64.92, y: bounds.maxY - 28.46), controlPoint2: NSPoint(x: bounds.minX + 65.42, y: bounds.maxY - 28.96))
        combinedShapePath.close()
        combinedShapePath.windingRule = .evenOddWindingRule
        fillColor4.setFill()
        combinedShapePath.fill()
        
        
        //// kraken 2 Drawing
        let kraken2Path = NSBezierPath()
        kraken2Path.move(to: NSPoint(x: bounds.minX + 71, y: bounds.maxY - 21.83))
        kraken2Path.line(to: NSPoint(x: bounds.minX + 72.99, y: bounds.maxY - 21.83))
        kraken2Path.line(to: NSPoint(x: bounds.minX + 72.99, y: bounds.maxY - 27.07))
        kraken2Path.line(to: NSPoint(x: bounds.minX + 78.32, y: bounds.maxY - 21.83))
        kraken2Path.line(to: NSPoint(x: bounds.minX + 80.97, y: bounds.maxY - 21.83))
        kraken2Path.line(to: NSPoint(x: bounds.minX + 76.25, y: bounds.maxY - 26.45))
        kraken2Path.line(to: NSPoint(x: bounds.minX + 81.24, y: bounds.maxY - 34.18))
        kraken2Path.line(to: NSPoint(x: bounds.minX + 78.59, y: bounds.maxY - 34.18))
        kraken2Path.line(to: NSPoint(x: bounds.minX + 74.74, y: bounds.maxY - 27.95))
        kraken2Path.line(to: NSPoint(x: bounds.minX + 72.99, y: bounds.maxY - 29.54))
        kraken2Path.line(to: NSPoint(x: bounds.minX + 72.99, y: bounds.maxY - 34.18))
        kraken2Path.line(to: NSPoint(x: bounds.minX + 71, y: bounds.maxY - 34.18))
        kraken2Path.line(to: NSPoint(x: bounds.minX + 71, y: bounds.maxY - 21.83))
        kraken2Path.close()
        kraken2Path.move(to: NSPoint(x: bounds.minX + 82.91, y: bounds.maxY - 21.83))
        kraken2Path.line(to: NSPoint(x: bounds.minX + 84.88, y: bounds.maxY - 21.83))
        kraken2Path.line(to: NSPoint(x: bounds.minX + 84.88, y: bounds.maxY - 23.96))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 86.07, y: bounds.maxY - 22.44), controlPoint1: NSPoint(x: bounds.minX + 85.04, y: bounds.maxY - 23.55), controlPoint2: NSPoint(x: bounds.minX + 85.44, y: bounds.maxY - 23.04))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 88.25, y: bounds.maxY - 21.55), controlPoint1: NSPoint(x: bounds.minX + 86.7, y: bounds.maxY - 21.85), controlPoint2: NSPoint(x: bounds.minX + 87.43, y: bounds.maxY - 21.55))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 88.45, y: bounds.maxY - 21.56), controlPoint1: NSPoint(x: bounds.minX + 88.29, y: bounds.maxY - 21.55), controlPoint2: NSPoint(x: bounds.minX + 88.35, y: bounds.maxY - 21.56))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 88.92, y: bounds.maxY - 21.61), controlPoint1: NSPoint(x: bounds.minX + 88.54, y: bounds.maxY - 21.57), controlPoint2: NSPoint(x: bounds.minX + 88.7, y: bounds.maxY - 21.59))
        kraken2Path.line(to: NSPoint(x: bounds.minX + 88.92, y: bounds.maxY - 23.8))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 88.58, y: bounds.maxY - 23.75), controlPoint1: NSPoint(x: bounds.minX + 88.8, y: bounds.maxY - 23.78), controlPoint2: NSPoint(x: bounds.minX + 88.68, y: bounds.maxY - 23.76))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 88.24, y: bounds.maxY - 23.74), controlPoint1: NSPoint(x: bounds.minX + 88.47, y: bounds.maxY - 23.75), controlPoint2: NSPoint(x: bounds.minX + 88.36, y: bounds.maxY - 23.74))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 85.83, y: bounds.maxY - 24.75), controlPoint1: NSPoint(x: bounds.minX + 87.19, y: bounds.maxY - 23.74), controlPoint2: NSPoint(x: bounds.minX + 86.39, y: bounds.maxY - 24.08))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 84.99, y: bounds.maxY - 27.07), controlPoint1: NSPoint(x: bounds.minX + 85.27, y: bounds.maxY - 25.42), controlPoint2: NSPoint(x: bounds.minX + 84.99, y: bounds.maxY - 26.2))
        kraken2Path.line(to: NSPoint(x: bounds.minX + 84.99, y: bounds.maxY - 34.18))
        kraken2Path.line(to: NSPoint(x: bounds.minX + 82.91, y: bounds.maxY - 34.18))
        kraken2Path.line(to: NSPoint(x: bounds.minX + 82.91, y: bounds.maxY - 21.83))
        kraken2Path.close()
        kraken2Path.move(to: NSPoint(x: bounds.minX + 92.31, y: bounds.maxY - 30.89))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 92.97, y: bounds.maxY - 32.31), controlPoint1: NSPoint(x: bounds.minX + 92.31, y: bounds.maxY - 31.49), controlPoint2: NSPoint(x: bounds.minX + 92.53, y: bounds.maxY - 31.96))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 94.52, y: bounds.maxY - 32.83), controlPoint1: NSPoint(x: bounds.minX + 93.4, y: bounds.maxY - 32.66), controlPoint2: NSPoint(x: bounds.minX + 93.92, y: bounds.maxY - 32.83))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 96.64, y: bounds.maxY - 32.32), controlPoint1: NSPoint(x: bounds.minX + 95.25, y: bounds.maxY - 32.83), controlPoint2: NSPoint(x: bounds.minX + 95.96, y: bounds.maxY - 32.66))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 98.37, y: bounds.maxY - 29.56), controlPoint1: NSPoint(x: bounds.minX + 97.8, y: bounds.maxY - 31.76), controlPoint2: NSPoint(x: bounds.minX + 98.37, y: bounds.maxY - 30.84))
        kraken2Path.line(to: NSPoint(x: bounds.minX + 98.37, y: bounds.maxY - 27.89))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 97.39, y: bounds.maxY - 28.3), controlPoint1: NSPoint(x: bounds.minX + 98.12, y: bounds.maxY - 28.05), controlPoint2: NSPoint(x: bounds.minX + 97.79, y: bounds.maxY - 28.19))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 96.22, y: bounds.maxY - 28.53), controlPoint1: NSPoint(x: bounds.minX + 96.99, y: bounds.maxY - 28.4), controlPoint2: NSPoint(x: bounds.minX + 96.6, y: bounds.maxY - 28.48))
        kraken2Path.line(to: NSPoint(x: bounds.minX + 94.96, y: bounds.maxY - 28.69))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 93.27, y: bounds.maxY - 29.16), controlPoint1: NSPoint(x: bounds.minX + 94.21, y: bounds.maxY - 28.79), controlPoint2: NSPoint(x: bounds.minX + 93.64, y: bounds.maxY - 28.95))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 92.31, y: bounds.maxY - 30.89), controlPoint1: NSPoint(x: bounds.minX + 92.63, y: bounds.maxY - 29.52), controlPoint2: NSPoint(x: bounds.minX + 92.31, y: bounds.maxY - 30.1))
        kraken2Path.close()
        kraken2Path.move(to: NSPoint(x: bounds.minX + 97.34, y: bounds.maxY - 26.69))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 98.29, y: bounds.maxY - 26.09), controlPoint1: NSPoint(x: bounds.minX + 97.81, y: bounds.maxY - 26.63), controlPoint2: NSPoint(x: bounds.minX + 98.13, y: bounds.maxY - 26.43))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 98.43, y: bounds.maxY - 25.3), controlPoint1: NSPoint(x: bounds.minX + 98.38, y: bounds.maxY - 25.91), controlPoint2: NSPoint(x: bounds.minX + 98.43, y: bounds.maxY - 25.64))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 97.68, y: bounds.maxY - 23.76), controlPoint1: NSPoint(x: bounds.minX + 98.43, y: bounds.maxY - 24.59), controlPoint2: NSPoint(x: bounds.minX + 98.18, y: bounds.maxY - 24.08))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 95.51, y: bounds.maxY - 23.28), controlPoint1: NSPoint(x: bounds.minX + 97.17, y: bounds.maxY - 23.44), controlPoint2: NSPoint(x: bounds.minX + 96.45, y: bounds.maxY - 23.28))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 93.21, y: bounds.maxY - 24.16), controlPoint1: NSPoint(x: bounds.minX + 94.43, y: bounds.maxY - 23.28), controlPoint2: NSPoint(x: bounds.minX + 93.66, y: bounds.maxY - 23.57))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 92.71, y: bounds.maxY - 25.6), controlPoint1: NSPoint(x: bounds.minX + 92.95, y: bounds.maxY - 24.48), controlPoint2: NSPoint(x: bounds.minX + 92.79, y: bounds.maxY - 24.96))
        kraken2Path.line(to: NSPoint(x: bounds.minX + 90.77, y: bounds.maxY - 25.6))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 92.26, y: bounds.maxY - 22.42), controlPoint1: NSPoint(x: bounds.minX + 90.81, y: bounds.maxY - 24.08), controlPoint2: NSPoint(x: bounds.minX + 91.31, y: bounds.maxY - 23.02))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 95.56, y: bounds.maxY - 21.53), controlPoint1: NSPoint(x: bounds.minX + 93.21, y: bounds.maxY - 21.83), controlPoint2: NSPoint(x: bounds.minX + 94.31, y: bounds.maxY - 21.53))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 99.1, y: bounds.maxY - 22.36), controlPoint1: NSPoint(x: bounds.minX + 97.01, y: bounds.maxY - 21.53), controlPoint2: NSPoint(x: bounds.minX + 98.19, y: bounds.maxY - 21.81))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 100.45, y: bounds.maxY - 24.94), controlPoint1: NSPoint(x: bounds.minX + 100, y: bounds.maxY - 22.91), controlPoint2: NSPoint(x: bounds.minX + 100.45, y: bounds.maxY - 23.77))
        kraken2Path.line(to: NSPoint(x: bounds.minX + 100.45, y: bounds.maxY - 32.06))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 100.58, y: bounds.maxY - 32.57), controlPoint1: NSPoint(x: bounds.minX + 100.45, y: bounds.maxY - 32.27), controlPoint2: NSPoint(x: bounds.minX + 100.49, y: bounds.maxY - 32.44))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 101.14, y: bounds.maxY - 32.77), controlPoint1: NSPoint(x: bounds.minX + 100.67, y: bounds.maxY - 32.71), controlPoint2: NSPoint(x: bounds.minX + 100.86, y: bounds.maxY - 32.77))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 101.45, y: bounds.maxY - 32.75), controlPoint1: NSPoint(x: bounds.minX + 101.23, y: bounds.maxY - 32.77), controlPoint2: NSPoint(x: bounds.minX + 101.34, y: bounds.maxY - 32.76))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 101.82, y: bounds.maxY - 32.7), controlPoint1: NSPoint(x: bounds.minX + 101.57, y: bounds.maxY - 32.74), controlPoint2: NSPoint(x: bounds.minX + 101.69, y: bounds.maxY - 32.72))
        kraken2Path.line(to: NSPoint(x: bounds.minX + 101.82, y: bounds.maxY - 34.23))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 101.08, y: bounds.maxY - 34.41), controlPoint1: NSPoint(x: bounds.minX + 101.5, y: bounds.maxY - 34.33), controlPoint2: NSPoint(x: bounds.minX + 101.25, y: bounds.maxY - 34.38))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 100.39, y: bounds.maxY - 34.44), controlPoint1: NSPoint(x: bounds.minX + 100.91, y: bounds.maxY - 34.43), controlPoint2: NSPoint(x: bounds.minX + 100.68, y: bounds.maxY - 34.44))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 98.83, y: bounds.maxY - 33.68), controlPoint1: NSPoint(x: bounds.minX + 99.68, y: bounds.maxY - 34.44), controlPoint2: NSPoint(x: bounds.minX + 99.16, y: bounds.maxY - 34.19))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 98.48, y: bounds.maxY - 32.54), controlPoint1: NSPoint(x: bounds.minX + 98.67, y: bounds.maxY - 33.41), controlPoint2: NSPoint(x: bounds.minX + 98.55, y: bounds.maxY - 33.03))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 96.66, y: bounds.maxY - 33.98), controlPoint1: NSPoint(x: bounds.minX + 98.05, y: bounds.maxY - 33.09), controlPoint2: NSPoint(x: bounds.minX + 97.45, y: bounds.maxY - 33.57))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 94.04, y: bounds.maxY - 34.59), controlPoint1: NSPoint(x: bounds.minX + 95.86, y: bounds.maxY - 34.39), controlPoint2: NSPoint(x: bounds.minX + 94.99, y: bounds.maxY - 34.59))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 91.23, y: bounds.maxY - 33.55), controlPoint1: NSPoint(x: bounds.minX + 92.89, y: bounds.maxY - 34.59), controlPoint2: NSPoint(x: bounds.minX + 91.96, y: bounds.maxY - 34.24))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 90.14, y: bounds.maxY - 30.94), controlPoint1: NSPoint(x: bounds.minX + 90.5, y: bounds.maxY - 32.85), controlPoint2: NSPoint(x: bounds.minX + 90.14, y: bounds.maxY - 31.98))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 91.21, y: bounds.maxY - 28.27), controlPoint1: NSPoint(x: bounds.minX + 90.14, y: bounds.maxY - 29.79), controlPoint2: NSPoint(x: bounds.minX + 90.5, y: bounds.maxY - 28.9))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 94.03, y: bounds.maxY - 27.11), controlPoint1: NSPoint(x: bounds.minX + 91.93, y: bounds.maxY - 27.64), controlPoint2: NSPoint(x: bounds.minX + 92.87, y: bounds.maxY - 27.26))
        kraken2Path.line(to: NSPoint(x: bounds.minX + 97.34, y: bounds.maxY - 26.69))
        kraken2Path.close()
        kraken2Path.move(to: NSPoint(x: bounds.minX + 103.8, y: bounds.maxY - 21.83))
        kraken2Path.line(to: NSPoint(x: bounds.minX + 105.8, y: bounds.maxY - 21.83))
        kraken2Path.line(to: NSPoint(x: bounds.minX + 105.8, y: bounds.maxY - 27.07))
        kraken2Path.line(to: NSPoint(x: bounds.minX + 111.13, y: bounds.maxY - 21.83))
        kraken2Path.line(to: NSPoint(x: bounds.minX + 113.78, y: bounds.maxY - 21.83))
        kraken2Path.line(to: NSPoint(x: bounds.minX + 109.05, y: bounds.maxY - 26.45))
        kraken2Path.line(to: NSPoint(x: bounds.minX + 114.04, y: bounds.maxY - 34.18))
        kraken2Path.line(to: NSPoint(x: bounds.minX + 111.39, y: bounds.maxY - 34.18))
        kraken2Path.line(to: NSPoint(x: bounds.minX + 107.54, y: bounds.maxY - 27.95))
        kraken2Path.line(to: NSPoint(x: bounds.minX + 105.8, y: bounds.maxY - 29.54))
        kraken2Path.line(to: NSPoint(x: bounds.minX + 105.8, y: bounds.maxY - 34.18))
        kraken2Path.line(to: NSPoint(x: bounds.minX + 103.8, y: bounds.maxY - 34.18))
        kraken2Path.line(to: NSPoint(x: bounds.minX + 103.8, y: bounds.maxY - 21.83))
        kraken2Path.close()
        kraken2Path.move(to: NSPoint(x: bounds.minX + 120.8, y: bounds.maxY - 21.55))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 123.35, y: bounds.maxY - 22.17), controlPoint1: NSPoint(x: bounds.minX + 121.68, y: bounds.maxY - 21.55), controlPoint2: NSPoint(x: bounds.minX + 122.53, y: bounds.maxY - 21.76))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 125.23, y: bounds.maxY - 23.77), controlPoint1: NSPoint(x: bounds.minX + 124.17, y: bounds.maxY - 22.58), controlPoint2: NSPoint(x: bounds.minX + 124.8, y: bounds.maxY - 23.11))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 126.06, y: bounds.maxY - 25.94), controlPoint1: NSPoint(x: bounds.minX + 125.64, y: bounds.maxY - 24.39), controlPoint2: NSPoint(x: bounds.minX + 125.92, y: bounds.maxY - 25.11))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 126.24, y: bounds.maxY - 28.67), controlPoint1: NSPoint(x: bounds.minX + 126.18, y: bounds.maxY - 26.51), controlPoint2: NSPoint(x: bounds.minX + 126.24, y: bounds.maxY - 27.42))
        kraken2Path.line(to: NSPoint(x: bounds.minX + 117.19, y: bounds.maxY - 28.67))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 118.08, y: bounds.maxY - 31.68), controlPoint1: NSPoint(x: bounds.minX + 117.23, y: bounds.maxY - 29.92), controlPoint2: NSPoint(x: bounds.minX + 117.53, y: bounds.maxY - 30.92))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 120.65, y: bounds.maxY - 32.82), controlPoint1: NSPoint(x: bounds.minX + 118.63, y: bounds.maxY - 32.44), controlPoint2: NSPoint(x: bounds.minX + 119.49, y: bounds.maxY - 32.82))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 123.24, y: bounds.maxY - 31.74), controlPoint1: NSPoint(x: bounds.minX + 121.73, y: bounds.maxY - 32.82), controlPoint2: NSPoint(x: bounds.minX + 122.6, y: bounds.maxY - 32.46))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 124.03, y: bounds.maxY - 30.3), controlPoint1: NSPoint(x: bounds.minX + 123.61, y: bounds.maxY - 31.33), controlPoint2: NSPoint(x: bounds.minX + 123.87, y: bounds.maxY - 30.85))
        kraken2Path.line(to: NSPoint(x: bounds.minX + 126.07, y: bounds.maxY - 30.3))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 125.53, y: bounds.maxY - 31.82), controlPoint1: NSPoint(x: bounds.minX + 126.02, y: bounds.maxY - 30.76), controlPoint2: NSPoint(x: bounds.minX + 125.84, y: bounds.maxY - 31.26))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 124.51, y: bounds.maxY - 33.19), controlPoint1: NSPoint(x: bounds.minX + 125.23, y: bounds.maxY - 32.38), controlPoint2: NSPoint(x: bounds.minX + 124.89, y: bounds.maxY - 32.83))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 122.17, y: bounds.maxY - 34.43), controlPoint1: NSPoint(x: bounds.minX + 123.88, y: bounds.maxY - 33.8), controlPoint2: NSPoint(x: bounds.minX + 123.1, y: bounds.maxY - 34.22))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 120.48, y: bounds.maxY - 34.62), controlPoint1: NSPoint(x: bounds.minX + 121.67, y: bounds.maxY - 34.55), controlPoint2: NSPoint(x: bounds.minX + 121.11, y: bounds.maxY - 34.62))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 116.57, y: bounds.maxY - 32.94), controlPoint1: NSPoint(x: bounds.minX + 118.94, y: bounds.maxY - 34.62), controlPoint2: NSPoint(x: bounds.minX + 117.64, y: bounds.maxY - 34.06))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 114.97, y: bounds.maxY - 28.24), controlPoint1: NSPoint(x: bounds.minX + 115.5, y: bounds.maxY - 31.82), controlPoint2: NSPoint(x: bounds.minX + 114.97, y: bounds.maxY - 30.25))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 116.58, y: bounds.maxY - 23.41), controlPoint1: NSPoint(x: bounds.minX + 114.97, y: bounds.maxY - 26.26), controlPoint2: NSPoint(x: bounds.minX + 115.5, y: bounds.maxY - 24.65))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 120.8, y: bounds.maxY - 21.55), controlPoint1: NSPoint(x: bounds.minX + 117.66, y: bounds.maxY - 22.17), controlPoint2: NSPoint(x: bounds.minX + 119.06, y: bounds.maxY - 21.55))
        kraken2Path.close()
        kraken2Path.move(to: NSPoint(x: bounds.minX + 124.11, y: bounds.maxY - 27.02))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 123.52, y: bounds.maxY - 24.86), controlPoint1: NSPoint(x: bounds.minX + 124.02, y: bounds.maxY - 26.12), controlPoint2: NSPoint(x: bounds.minX + 123.83, y: bounds.maxY - 25.4))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 120.67, y: bounds.maxY - 23.36), controlPoint1: NSPoint(x: bounds.minX + 122.95, y: bounds.maxY - 23.86), controlPoint2: NSPoint(x: bounds.minX + 122, y: bounds.maxY - 23.36))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 118.27, y: bounds.maxY - 24.39), controlPoint1: NSPoint(x: bounds.minX + 119.72, y: bounds.maxY - 23.36), controlPoint2: NSPoint(x: bounds.minX + 118.92, y: bounds.maxY - 23.71))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 117.25, y: bounds.maxY - 27.02), controlPoint1: NSPoint(x: bounds.minX + 117.63, y: bounds.maxY - 25.08), controlPoint2: NSPoint(x: bounds.minX + 117.29, y: bounds.maxY - 25.96))
        kraken2Path.line(to: NSPoint(x: bounds.minX + 124.11, y: bounds.maxY - 27.02))
        kraken2Path.close()
        kraken2Path.move(to: NSPoint(x: bounds.minX + 128.79, y: bounds.maxY - 21.83))
        kraken2Path.line(to: NSPoint(x: bounds.minX + 130.76, y: bounds.maxY - 21.83))
        kraken2Path.line(to: NSPoint(x: bounds.minX + 130.76, y: bounds.maxY - 23.58))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 132.62, y: bounds.maxY - 22.02), controlPoint1: NSPoint(x: bounds.minX + 131.35, y: bounds.maxY - 22.86), controlPoint2: NSPoint(x: bounds.minX + 131.97, y: bounds.maxY - 22.34))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 134.8, y: bounds.maxY - 21.55), controlPoint1: NSPoint(x: bounds.minX + 133.27, y: bounds.maxY - 21.71), controlPoint2: NSPoint(x: bounds.minX + 134, y: bounds.maxY - 21.55))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 138.35, y: bounds.maxY - 23.38), controlPoint1: NSPoint(x: bounds.minX + 136.55, y: bounds.maxY - 21.55), controlPoint2: NSPoint(x: bounds.minX + 137.73, y: bounds.maxY - 22.16))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 138.86, y: bounds.maxY - 26.26), controlPoint1: NSPoint(x: bounds.minX + 138.69, y: bounds.maxY - 24.05), controlPoint2: NSPoint(x: bounds.minX + 138.86, y: bounds.maxY - 25.01))
        kraken2Path.line(to: NSPoint(x: bounds.minX + 138.86, y: bounds.maxY - 34.18))
        kraken2Path.line(to: NSPoint(x: bounds.minX + 136.75, y: bounds.maxY - 34.18))
        kraken2Path.line(to: NSPoint(x: bounds.minX + 136.75, y: bounds.maxY - 26.39))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 136.41, y: bounds.maxY - 24.57), controlPoint1: NSPoint(x: bounds.minX + 136.75, y: bounds.maxY - 25.64), controlPoint2: NSPoint(x: bounds.minX + 136.64, y: bounds.maxY - 25.03))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 134.41, y: bounds.maxY - 23.42), controlPoint1: NSPoint(x: bounds.minX + 136.04, y: bounds.maxY - 23.8), controlPoint2: NSPoint(x: bounds.minX + 135.37, y: bounds.maxY - 23.42))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 133.2, y: bounds.maxY - 23.57), controlPoint1: NSPoint(x: bounds.minX + 133.91, y: bounds.maxY - 23.42), controlPoint2: NSPoint(x: bounds.minX + 133.51, y: bounds.maxY - 23.47))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 131.7, y: bounds.maxY - 24.58), controlPoint1: NSPoint(x: bounds.minX + 132.63, y: bounds.maxY - 23.74), controlPoint2: NSPoint(x: bounds.minX + 132.13, y: bounds.maxY - 24.08))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 131.02, y: bounds.maxY - 25.85), controlPoint1: NSPoint(x: bounds.minX + 131.35, y: bounds.maxY - 24.99), controlPoint2: NSPoint(x: bounds.minX + 131.13, y: bounds.maxY - 25.41))
        kraken2Path.curve(to: NSPoint(x: bounds.minX + 130.87, y: bounds.maxY - 27.71), controlPoint1: NSPoint(x: bounds.minX + 130.92, y: bounds.maxY - 26.28), controlPoint2: NSPoint(x: bounds.minX + 130.87, y: bounds.maxY - 26.9))
        kraken2Path.line(to: NSPoint(x: bounds.minX + 130.87, y: bounds.maxY - 34.18))
        kraken2Path.line(to: NSPoint(x: bounds.minX + 128.79, y: bounds.maxY - 34.18))
        kraken2Path.line(to: NSPoint(x: bounds.minX + 128.79, y: bounds.maxY - 21.83))
        kraken2Path.close()
        kraken2Path.windingRule = .evenOddWindingRule
        fillColor4.setFill()
        kraken2Path.fill()
    }
    
    public static func drawAddWalletAddressButton(bounds: NSRect = NSRect(x: 0, y: 0, width: 191, height: 56), original: Bool = true, hover: Bool = false, pressed: Bool = false) {
        //// General Declarations
        let context = NSGraphicsContext.current!.cgContext
        
        //// Color Declarations
        let highlightGradientColor = NSColor(red: 1, green: 1, blue: 1, alpha: 0.09)
        let highlightGradientColor2 = NSColor(red: 1, green: 1, blue: 1, alpha: 0)
        let shadow2Color = NSColor(red: 1, green: 1, blue: 1, alpha: 0.36)
        let fillColor4 = NSColor(red: 1, green: 1, blue: 1, alpha: 1)
        let addWalletAddressBackground = NSColor(red: 0.463, green: 0.529, blue: 0.58, alpha: 1)
        
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
            //// addWalletAddress
            NSGraphicsContext.saveGraphicsState()
            context.translateBy(x: bounds.minX + 95.5, y: bounds.maxY - 28)
            
            outerShadow.set()
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            
            
            //// addWalletAddressBase Drawing
            let addWalletAddressBasePath = NSBezierPath(roundedRect: NSRect(x: -88.5, y: -21, width: 177, height: 42), xRadius: 5, yRadius: 5)
            addWalletAddressBackground.setFill()
            addWalletAddressBasePath.fill()
            
            
            //// addWalletAddressHighlight Drawing
            let addWalletAddressHighlightPath = NSBezierPath(roundedRect: NSRect(x: -88.5, y: -21, width: 177, height: 42), xRadius: 5, yRadius: 5)
            highlightGradient.draw(in: addWalletAddressHighlightPath, angle: -45)
            
            ////// addWalletAddressHighlight Inner Shadow
            NSGraphicsContext.saveGraphicsState()
            addWalletAddressHighlightPath.bounds.clip()
            context.setShadow(offset: NSSize.zero, blur: 0, color: nil)
            
            context.setAlpha(innerStroke.shadowColor!.alphaComponent)
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            let addWalletAddressHighlightOpaqueShadow = NSShadow()
            addWalletAddressHighlightOpaqueShadow.shadowColor = innerStroke.shadowColor!.withAlphaComponent(1)
            addWalletAddressHighlightOpaqueShadow.shadowOffset = innerStroke.shadowOffset
            addWalletAddressHighlightOpaqueShadow.shadowBlurRadius = innerStroke.shadowBlurRadius
            addWalletAddressHighlightOpaqueShadow.set()
            
            context.setBlendMode(.sourceOut)
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            
            addWalletAddressHighlightOpaqueShadow.shadowColor!.setFill()
            addWalletAddressHighlightPath.fill()
            
            context.endTransparencyLayer()
            context.endTransparencyLayer()
            NSGraphicsContext.restoreGraphicsState()
            
            
            
            context.endTransparencyLayer()
            
            NSGraphicsContext.restoreGraphicsState()
        }
        
        
        if (hover) {
            //// addWalletAddressHover
            NSGraphicsContext.saveGraphicsState()
            context.translateBy(x: bounds.minX + 95.5, y: bounds.maxY - 28)
            context.scaleBy(x: 1.05, y: 1.05)
            
            outerShadow.set()
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            
            
            //// addWalletAddressBase 2 Drawing
            let addWalletAddressBase2Path = NSBezierPath(roundedRect: NSRect(x: -88.5, y: -21, width: 177, height: 42), xRadius: 5, yRadius: 5)
            addWalletAddressBackground.setFill()
            addWalletAddressBase2Path.fill()
            
            
            //// addWalletAddressHighlight 2 Drawing
            let addWalletAddressHighlight2Path = NSBezierPath(roundedRect: NSRect(x: -88.5, y: -21, width: 177, height: 42), xRadius: 5, yRadius: 5)
            highlightGradient.draw(in: addWalletAddressHighlight2Path, angle: -45)
            
            ////// addWalletAddressHighlight 2 Inner Shadow
            NSGraphicsContext.saveGraphicsState()
            addWalletAddressHighlight2Path.bounds.clip()
            context.setShadow(offset: NSSize.zero, blur: 0, color: nil)
            
            context.setAlpha(innerStroke.shadowColor!.alphaComponent)
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            let addWalletAddressHighlight2OpaqueShadow = NSShadow()
            addWalletAddressHighlight2OpaqueShadow.shadowColor = innerStroke.shadowColor!.withAlphaComponent(1)
            addWalletAddressHighlight2OpaqueShadow.shadowOffset = innerStroke.shadowOffset
            addWalletAddressHighlight2OpaqueShadow.shadowBlurRadius = innerStroke.shadowBlurRadius
            addWalletAddressHighlight2OpaqueShadow.set()
            
            context.setBlendMode(.sourceOut)
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            
            addWalletAddressHighlight2OpaqueShadow.shadowColor!.setFill()
            addWalletAddressHighlight2Path.fill()
            
            context.endTransparencyLayer()
            context.endTransparencyLayer()
            NSGraphicsContext.restoreGraphicsState()
            
            
            
            context.endTransparencyLayer()
            
            NSGraphicsContext.restoreGraphicsState()
        }
        
        
        if (pressed) {
            //// addWalletAddressPressed
            NSGraphicsContext.saveGraphicsState()
            context.translateBy(x: bounds.minX + 95.5, y: bounds.maxY - 28)
            
            outerShadow.set()
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            
            
            //// addWalletAddressBase 3 Drawing
            let addWalletAddressBase3Path = NSBezierPath(roundedRect: NSRect(x: -88.5, y: -21, width: 177, height: 42), xRadius: 5, yRadius: 5)
            addWalletAddressBackground.setFill()
            addWalletAddressBase3Path.fill()
            
            
            //// addWalletAddressHighlight 3 Drawing
            let addWalletAddressHighlight3Path = NSBezierPath(roundedRect: NSRect(x: -88.5, y: -21, width: 177, height: 42), xRadius: 5, yRadius: 5)
            highlightGradient.draw(in: addWalletAddressHighlight3Path, angle: -45)
            
            ////// addWalletAddressHighlight 3 Inner Shadow
            NSGraphicsContext.saveGraphicsState()
            addWalletAddressHighlight3Path.bounds.clip()
            context.setShadow(offset: NSSize.zero, blur: 0, color: nil)
            
            context.setAlpha(innerStroke.shadowColor!.alphaComponent)
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            let addWalletAddressHighlight3OpaqueShadow = NSShadow()
            addWalletAddressHighlight3OpaqueShadow.shadowColor = innerStroke.shadowColor!.withAlphaComponent(1)
            addWalletAddressHighlight3OpaqueShadow.shadowOffset = innerStroke.shadowOffset
            addWalletAddressHighlight3OpaqueShadow.shadowBlurRadius = innerStroke.shadowBlurRadius
            addWalletAddressHighlight3OpaqueShadow.set()
            
            context.setBlendMode(.sourceOut)
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            
            addWalletAddressHighlight3OpaqueShadow.shadowColor!.setFill()
            addWalletAddressHighlight3Path.fill()
            
            context.endTransparencyLayer()
            context.endTransparencyLayer()
            NSGraphicsContext.restoreGraphicsState()
            
            
            
            context.endTransparencyLayer()
            
            NSGraphicsContext.restoreGraphicsState()
        }
        
        
        //// walletText
        //// Add-Wallet-Address-Copy Drawing
        let addWalletAddressCopyPath = NSBezierPath()
        addWalletAddressCopyPath.move(to: NSPoint(x: bounds.minX + 35.98, y: bounds.maxY - 32.5))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 35.14, y: bounds.maxY - 29.98))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 31.51, y: bounds.maxY - 29.98))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 30.66, y: bounds.maxY - 32.5))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 28.88, y: bounds.maxY - 32.5))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 32.38, y: bounds.maxY - 22.64))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 34.36, y: bounds.maxY - 22.64))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 37.87, y: bounds.maxY - 32.5))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 35.98, y: bounds.maxY - 32.5))
        addWalletAddressCopyPath.close()
        addWalletAddressCopyPath.move(to: NSPoint(x: bounds.minX + 33.28, y: bounds.maxY - 24.52))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 31.92, y: bounds.maxY - 28.58))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 34.73, y: bounds.maxY - 28.58))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 33.39, y: bounds.maxY - 24.52))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 33.28, y: bounds.maxY - 24.52))
        addWalletAddressCopyPath.close()
        addWalletAddressCopyPath.move(to: NSPoint(x: bounds.minX + 41.68, y: bounds.maxY - 32.62))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 38.61, y: bounds.maxY - 28.75), controlPoint1: NSPoint(x: bounds.minX + 39.79, y: bounds.maxY - 32.62), controlPoint2: NSPoint(x: bounds.minX + 38.61, y: bounds.maxY - 31.13))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 41.68, y: bounds.maxY - 24.9), controlPoint1: NSPoint(x: bounds.minX + 38.61, y: bounds.maxY - 26.39), controlPoint2: NSPoint(x: bounds.minX + 39.8, y: bounds.maxY - 24.9))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 43.95, y: bounds.maxY - 26.21), controlPoint1: NSPoint(x: bounds.minX + 42.71, y: bounds.maxY - 24.9), controlPoint2: NSPoint(x: bounds.minX + 43.56, y: bounds.maxY - 25.39))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 44.07, y: bounds.maxY - 26.21))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 44.07, y: bounds.maxY - 22.13))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 45.77, y: bounds.maxY - 22.13))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 45.77, y: bounds.maxY - 32.5))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 44.12, y: bounds.maxY - 32.5))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 44.12, y: bounds.maxY - 31.32))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 44.01, y: bounds.maxY - 31.32))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 41.68, y: bounds.maxY - 32.62), controlPoint1: NSPoint(x: bounds.minX + 43.58, y: bounds.maxY - 32.14), controlPoint2: NSPoint(x: bounds.minX + 42.72, y: bounds.maxY - 32.62))
        addWalletAddressCopyPath.close()
        addWalletAddressCopyPath.move(to: NSPoint(x: bounds.minX + 42.21, y: bounds.maxY - 26.34))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 40.34, y: bounds.maxY - 28.76), controlPoint1: NSPoint(x: bounds.minX + 41.06, y: bounds.maxY - 26.34), controlPoint2: NSPoint(x: bounds.minX + 40.34, y: bounds.maxY - 27.26))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 42.21, y: bounds.maxY - 31.18), controlPoint1: NSPoint(x: bounds.minX + 40.34, y: bounds.maxY - 30.27), controlPoint2: NSPoint(x: bounds.minX + 41.05, y: bounds.maxY - 31.18))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 44.09, y: bounds.maxY - 28.76), controlPoint1: NSPoint(x: bounds.minX + 43.38, y: bounds.maxY - 31.18), controlPoint2: NSPoint(x: bounds.minX + 44.09, y: bounds.maxY - 30.26))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 42.21, y: bounds.maxY - 26.34), controlPoint1: NSPoint(x: bounds.minX + 44.09, y: bounds.maxY - 27.27), controlPoint2: NSPoint(x: bounds.minX + 43.37, y: bounds.maxY - 26.34))
        addWalletAddressCopyPath.close()
        addWalletAddressCopyPath.move(to: NSPoint(x: bounds.minX + 50.61, y: bounds.maxY - 32.62))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 47.54, y: bounds.maxY - 28.75), controlPoint1: NSPoint(x: bounds.minX + 48.72, y: bounds.maxY - 32.62), controlPoint2: NSPoint(x: bounds.minX + 47.54, y: bounds.maxY - 31.13))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 50.61, y: bounds.maxY - 24.9), controlPoint1: NSPoint(x: bounds.minX + 47.54, y: bounds.maxY - 26.39), controlPoint2: NSPoint(x: bounds.minX + 48.73, y: bounds.maxY - 24.9))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 52.88, y: bounds.maxY - 26.21), controlPoint1: NSPoint(x: bounds.minX + 51.64, y: bounds.maxY - 24.9), controlPoint2: NSPoint(x: bounds.minX + 52.48, y: bounds.maxY - 25.39))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 53, y: bounds.maxY - 26.21))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 53, y: bounds.maxY - 22.13))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 54.69, y: bounds.maxY - 22.13))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 54.69, y: bounds.maxY - 32.5))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 53.05, y: bounds.maxY - 32.5))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 53.05, y: bounds.maxY - 31.32))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 52.94, y: bounds.maxY - 31.32))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 50.61, y: bounds.maxY - 32.62), controlPoint1: NSPoint(x: bounds.minX + 52.51, y: bounds.maxY - 32.14), controlPoint2: NSPoint(x: bounds.minX + 51.65, y: bounds.maxY - 32.62))
        addWalletAddressCopyPath.close()
        addWalletAddressCopyPath.move(to: NSPoint(x: bounds.minX + 51.14, y: bounds.maxY - 26.34))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 49.27, y: bounds.maxY - 28.76), controlPoint1: NSPoint(x: bounds.minX + 49.98, y: bounds.maxY - 26.34), controlPoint2: NSPoint(x: bounds.minX + 49.27, y: bounds.maxY - 27.26))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 51.14, y: bounds.maxY - 31.18), controlPoint1: NSPoint(x: bounds.minX + 49.27, y: bounds.maxY - 30.27), controlPoint2: NSPoint(x: bounds.minX + 49.98, y: bounds.maxY - 31.18))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 53.02, y: bounds.maxY - 28.76), controlPoint1: NSPoint(x: bounds.minX + 52.31, y: bounds.maxY - 31.18), controlPoint2: NSPoint(x: bounds.minX + 53.02, y: bounds.maxY - 30.26))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 51.14, y: bounds.maxY - 26.34), controlPoint1: NSPoint(x: bounds.minX + 53.02, y: bounds.maxY - 27.27), controlPoint2: NSPoint(x: bounds.minX + 52.3, y: bounds.maxY - 26.34))
        addWalletAddressCopyPath.close()
        addWalletAddressCopyPath.move(to: NSPoint(x: bounds.minX + 66.43, y: bounds.maxY - 25.51))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 66.53, y: bounds.maxY - 25.51))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 68.54, y: bounds.maxY - 32.5))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 70.2, y: bounds.maxY - 32.5))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 72.84, y: bounds.maxY - 22.64))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 71.02, y: bounds.maxY - 22.64))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 69.33, y: bounds.maxY - 29.98))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 69.23, y: bounds.maxY - 29.98))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 67.26, y: bounds.maxY - 22.64))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 65.7, y: bounds.maxY - 22.64))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 63.76, y: bounds.maxY - 29.98))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 63.65, y: bounds.maxY - 29.98))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 61.97, y: bounds.maxY - 22.64))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 60.13, y: bounds.maxY - 22.64))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 62.77, y: bounds.maxY - 32.5))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 64.43, y: bounds.maxY - 32.5))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 66.43, y: bounds.maxY - 25.51))
        addWalletAddressCopyPath.close()
        addWalletAddressCopyPath.move(to: NSPoint(x: bounds.minX + 76.25, y: bounds.maxY - 31.29))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 78.04, y: bounds.maxY - 29.76), controlPoint1: NSPoint(x: bounds.minX + 77.27, y: bounds.maxY - 31.29), controlPoint2: NSPoint(x: bounds.minX + 78.04, y: bounds.maxY - 30.63))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 78.04, y: bounds.maxY - 29.16))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 76.35, y: bounds.maxY - 29.27))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 74.95, y: bounds.maxY - 30.29), controlPoint1: NSPoint(x: bounds.minX + 75.4, y: bounds.maxY - 29.33), controlPoint2: NSPoint(x: bounds.minX + 74.95, y: bounds.maxY - 29.68))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 76.25, y: bounds.maxY - 31.29), controlPoint1: NSPoint(x: bounds.minX + 74.95, y: bounds.maxY - 30.91), controlPoint2: NSPoint(x: bounds.minX + 75.49, y: bounds.maxY - 31.29))
        addWalletAddressCopyPath.close()
        addWalletAddressCopyPath.move(to: NSPoint(x: bounds.minX + 75.75, y: bounds.maxY - 32.62))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 73.27, y: bounds.maxY - 30.38), controlPoint1: NSPoint(x: bounds.minX + 74.31, y: bounds.maxY - 32.62), controlPoint2: NSPoint(x: bounds.minX + 73.27, y: bounds.maxY - 31.75))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 76.11, y: bounds.maxY - 28.14), controlPoint1: NSPoint(x: bounds.minX + 73.27, y: bounds.maxY - 29.03), controlPoint2: NSPoint(x: bounds.minX + 74.29, y: bounds.maxY - 28.25))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 78.04, y: bounds.maxY - 28.02))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 78.04, y: bounds.maxY - 27.39))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 76.63, y: bounds.maxY - 26.25), controlPoint1: NSPoint(x: bounds.minX + 78.04, y: bounds.maxY - 26.66), controlPoint2: NSPoint(x: bounds.minX + 77.55, y: bounds.maxY - 26.25))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 75.16, y: bounds.maxY - 27.03), controlPoint1: NSPoint(x: bounds.minX + 75.85, y: bounds.maxY - 26.25), controlPoint2: NSPoint(x: bounds.minX + 75.32, y: bounds.maxY - 26.53))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 73.56, y: bounds.maxY - 27.03))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 76.71, y: bounds.maxY - 24.87), controlPoint1: NSPoint(x: bounds.minX + 73.7, y: bounds.maxY - 25.71), controlPoint2: NSPoint(x: bounds.minX + 74.93, y: bounds.maxY - 24.87))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 79.71, y: bounds.maxY - 27.39), controlPoint1: NSPoint(x: bounds.minX + 78.63, y: bounds.maxY - 24.87), controlPoint2: NSPoint(x: bounds.minX + 79.71, y: bounds.maxY - 25.81))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 79.71, y: bounds.maxY - 32.5))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 78.08, y: bounds.maxY - 32.5))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 78.08, y: bounds.maxY - 31.47))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 77.96, y: bounds.maxY - 31.47))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 75.75, y: bounds.maxY - 32.62), controlPoint1: NSPoint(x: bounds.minX + 77.55, y: bounds.maxY - 32.2), controlPoint2: NSPoint(x: bounds.minX + 76.73, y: bounds.maxY - 32.62))
        addWalletAddressCopyPath.close()
        addWalletAddressCopyPath.move(to: NSPoint(x: bounds.minX + 81.82, y: bounds.maxY - 32.5))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 83.51, y: bounds.maxY - 32.5))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 83.51, y: bounds.maxY - 22.13))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 81.82, y: bounds.maxY - 22.13))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 81.82, y: bounds.maxY - 32.5))
        addWalletAddressCopyPath.close()
        addWalletAddressCopyPath.move(to: NSPoint(x: bounds.minX + 85.72, y: bounds.maxY - 32.5))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 87.42, y: bounds.maxY - 32.5))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 87.42, y: bounds.maxY - 22.13))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 85.72, y: bounds.maxY - 22.13))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 85.72, y: bounds.maxY - 32.5))
        addWalletAddressCopyPath.close()
        addWalletAddressCopyPath.move(to: NSPoint(x: bounds.minX + 92.69, y: bounds.maxY - 26.22))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 90.9, y: bounds.maxY - 28.04), controlPoint1: NSPoint(x: bounds.minX + 91.68, y: bounds.maxY - 26.22), controlPoint2: NSPoint(x: bounds.minX + 90.97, y: bounds.maxY - 26.94))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 94.42, y: bounds.maxY - 28.04))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 92.69, y: bounds.maxY - 26.22), controlPoint1: NSPoint(x: bounds.minX + 94.38, y: bounds.maxY - 26.93), controlPoint2: NSPoint(x: bounds.minX + 93.71, y: bounds.maxY - 26.22))
        addWalletAddressCopyPath.close()
        addWalletAddressCopyPath.move(to: NSPoint(x: bounds.minX + 94.43, y: bounds.maxY - 30.44))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 96.04, y: bounds.maxY - 30.44))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 92.71, y: bounds.maxY - 32.65), controlPoint1: NSPoint(x: bounds.minX + 95.72, y: bounds.maxY - 31.8), controlPoint2: NSPoint(x: bounds.minX + 94.48, y: bounds.maxY - 32.65))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 89.19, y: bounds.maxY - 28.79), controlPoint1: NSPoint(x: bounds.minX + 90.51, y: bounds.maxY - 32.65), controlPoint2: NSPoint(x: bounds.minX + 89.19, y: bounds.maxY - 31.19))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 92.7, y: bounds.maxY - 24.87), controlPoint1: NSPoint(x: bounds.minX + 89.19, y: bounds.maxY - 26.38), controlPoint2: NSPoint(x: bounds.minX + 90.53, y: bounds.maxY - 24.87))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 96.11, y: bounds.maxY - 28.64), controlPoint1: NSPoint(x: bounds.minX + 94.83, y: bounds.maxY - 24.87), controlPoint2: NSPoint(x: bounds.minX + 96.11, y: bounds.maxY - 26.29))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 96.11, y: bounds.maxY - 29.19))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 90.89, y: bounds.maxY - 29.19))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 90.89, y: bounds.maxY - 29.28))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 92.76, y: bounds.maxY - 31.3), controlPoint1: NSPoint(x: bounds.minX + 90.93, y: bounds.maxY - 30.52), controlPoint2: NSPoint(x: bounds.minX + 91.65, y: bounds.maxY - 31.3))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 94.43, y: bounds.maxY - 30.44), controlPoint1: NSPoint(x: bounds.minX + 93.6, y: bounds.maxY - 31.3), controlPoint2: NSPoint(x: bounds.minX + 94.18, y: bounds.maxY - 31))
        addWalletAddressCopyPath.close()
        addWalletAddressCopyPath.move(to: NSPoint(x: bounds.minX + 98.35, y: bounds.maxY - 23.19))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 98.35, y: bounds.maxY - 25.07))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 97.17, y: bounds.maxY - 25.07))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 97.17, y: bounds.maxY - 26.42))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 98.35, y: bounds.maxY - 26.42))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 98.35, y: bounds.maxY - 30.5))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 100.75, y: bounds.maxY - 32.53), controlPoint1: NSPoint(x: bounds.minX + 98.35, y: bounds.maxY - 31.95), controlPoint2: NSPoint(x: bounds.minX + 99.04, y: bounds.maxY - 32.53))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 101.64, y: bounds.maxY - 32.45), controlPoint1: NSPoint(x: bounds.minX + 101.08, y: bounds.maxY - 32.53), controlPoint2: NSPoint(x: bounds.minX + 101.4, y: bounds.maxY - 32.5))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 101.64, y: bounds.maxY - 31.13))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 101.07, y: bounds.maxY - 31.16), controlPoint1: NSPoint(x: bounds.minX + 101.44, y: bounds.maxY - 31.15), controlPoint2: NSPoint(x: bounds.minX + 101.31, y: bounds.maxY - 31.16))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 100.04, y: bounds.maxY - 30.09), controlPoint1: NSPoint(x: bounds.minX + 100.36, y: bounds.maxY - 31.16), controlPoint2: NSPoint(x: bounds.minX + 100.04, y: bounds.maxY - 30.83))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 100.04, y: bounds.maxY - 26.42))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 101.64, y: bounds.maxY - 26.42))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 101.64, y: bounds.maxY - 25.07))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 100.04, y: bounds.maxY - 25.07))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 100.04, y: bounds.maxY - 23.19))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 98.35, y: bounds.maxY - 23.19))
        addWalletAddressCopyPath.close()
        addWalletAddressCopyPath.move(to: NSPoint(x: bounds.minX + 113.61, y: bounds.maxY - 32.5))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 112.78, y: bounds.maxY - 29.98))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 109.15, y: bounds.maxY - 29.98))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 108.3, y: bounds.maxY - 32.5))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 106.52, y: bounds.maxY - 32.5))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 110.02, y: bounds.maxY - 22.64))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 112, y: bounds.maxY - 22.64))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 115.51, y: bounds.maxY - 32.5))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 113.61, y: bounds.maxY - 32.5))
        addWalletAddressCopyPath.close()
        addWalletAddressCopyPath.move(to: NSPoint(x: bounds.minX + 110.91, y: bounds.maxY - 24.52))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 109.56, y: bounds.maxY - 28.58))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 112.37, y: bounds.maxY - 28.58))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 111.03, y: bounds.maxY - 24.52))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 110.91, y: bounds.maxY - 24.52))
        addWalletAddressCopyPath.close()
        addWalletAddressCopyPath.move(to: NSPoint(x: bounds.minX + 119.32, y: bounds.maxY - 32.62))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 116.24, y: bounds.maxY - 28.75), controlPoint1: NSPoint(x: bounds.minX + 117.43, y: bounds.maxY - 32.62), controlPoint2: NSPoint(x: bounds.minX + 116.24, y: bounds.maxY - 31.13))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 119.32, y: bounds.maxY - 24.9), controlPoint1: NSPoint(x: bounds.minX + 116.24, y: bounds.maxY - 26.39), controlPoint2: NSPoint(x: bounds.minX + 117.43, y: bounds.maxY - 24.9))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 121.59, y: bounds.maxY - 26.21), controlPoint1: NSPoint(x: bounds.minX + 120.35, y: bounds.maxY - 24.9), controlPoint2: NSPoint(x: bounds.minX + 121.19, y: bounds.maxY - 25.39))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 121.71, y: bounds.maxY - 26.21))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 121.71, y: bounds.maxY - 22.13))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 123.4, y: bounds.maxY - 22.13))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 123.4, y: bounds.maxY - 32.5))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 121.76, y: bounds.maxY - 32.5))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 121.76, y: bounds.maxY - 31.32))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 121.64, y: bounds.maxY - 31.32))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 119.32, y: bounds.maxY - 32.62), controlPoint1: NSPoint(x: bounds.minX + 121.22, y: bounds.maxY - 32.14), controlPoint2: NSPoint(x: bounds.minX + 120.36, y: bounds.maxY - 32.62))
        addWalletAddressCopyPath.close()
        addWalletAddressCopyPath.move(to: NSPoint(x: bounds.minX + 119.85, y: bounds.maxY - 26.34))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 117.98, y: bounds.maxY - 28.76), controlPoint1: NSPoint(x: bounds.minX + 118.69, y: bounds.maxY - 26.34), controlPoint2: NSPoint(x: bounds.minX + 117.98, y: bounds.maxY - 27.26))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 119.85, y: bounds.maxY - 31.18), controlPoint1: NSPoint(x: bounds.minX + 117.98, y: bounds.maxY - 30.27), controlPoint2: NSPoint(x: bounds.minX + 118.68, y: bounds.maxY - 31.18))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 121.73, y: bounds.maxY - 28.76), controlPoint1: NSPoint(x: bounds.minX + 121.02, y: bounds.maxY - 31.18), controlPoint2: NSPoint(x: bounds.minX + 121.73, y: bounds.maxY - 30.26))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 119.85, y: bounds.maxY - 26.34), controlPoint1: NSPoint(x: bounds.minX + 121.73, y: bounds.maxY - 27.27), controlPoint2: NSPoint(x: bounds.minX + 121.01, y: bounds.maxY - 26.34))
        addWalletAddressCopyPath.close()
        addWalletAddressCopyPath.move(to: NSPoint(x: bounds.minX + 128.25, y: bounds.maxY - 32.62))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 125.17, y: bounds.maxY - 28.75), controlPoint1: NSPoint(x: bounds.minX + 126.35, y: bounds.maxY - 32.62), controlPoint2: NSPoint(x: bounds.minX + 125.17, y: bounds.maxY - 31.13))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 128.25, y: bounds.maxY - 24.9), controlPoint1: NSPoint(x: bounds.minX + 125.17, y: bounds.maxY - 26.39), controlPoint2: NSPoint(x: bounds.minX + 126.36, y: bounds.maxY - 24.9))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 130.52, y: bounds.maxY - 26.21), controlPoint1: NSPoint(x: bounds.minX + 129.27, y: bounds.maxY - 24.9), controlPoint2: NSPoint(x: bounds.minX + 130.12, y: bounds.maxY - 25.39))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 130.63, y: bounds.maxY - 26.21))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 130.63, y: bounds.maxY - 22.13))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 132.33, y: bounds.maxY - 22.13))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 132.33, y: bounds.maxY - 32.5))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 130.69, y: bounds.maxY - 32.5))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 130.69, y: bounds.maxY - 31.32))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 130.57, y: bounds.maxY - 31.32))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 128.25, y: bounds.maxY - 32.62), controlPoint1: NSPoint(x: bounds.minX + 130.15, y: bounds.maxY - 32.14), controlPoint2: NSPoint(x: bounds.minX + 129.29, y: bounds.maxY - 32.62))
        addWalletAddressCopyPath.close()
        addWalletAddressCopyPath.move(to: NSPoint(x: bounds.minX + 128.77, y: bounds.maxY - 26.34))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 126.91, y: bounds.maxY - 28.76), controlPoint1: NSPoint(x: bounds.minX + 127.62, y: bounds.maxY - 26.34), controlPoint2: NSPoint(x: bounds.minX + 126.91, y: bounds.maxY - 27.26))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 128.77, y: bounds.maxY - 31.18), controlPoint1: NSPoint(x: bounds.minX + 126.91, y: bounds.maxY - 30.27), controlPoint2: NSPoint(x: bounds.minX + 127.61, y: bounds.maxY - 31.18))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 130.65, y: bounds.maxY - 28.76), controlPoint1: NSPoint(x: bounds.minX + 129.94, y: bounds.maxY - 31.18), controlPoint2: NSPoint(x: bounds.minX + 130.65, y: bounds.maxY - 30.26))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 128.77, y: bounds.maxY - 26.34), controlPoint1: NSPoint(x: bounds.minX + 130.65, y: bounds.maxY - 27.27), controlPoint2: NSPoint(x: bounds.minX + 129.94, y: bounds.maxY - 26.34))
        addWalletAddressCopyPath.close()
        addWalletAddressCopyPath.move(to: NSPoint(x: bounds.minX + 134.47, y: bounds.maxY - 32.5))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 136.16, y: bounds.maxY - 32.5))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 136.16, y: bounds.maxY - 28.18))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 138.03, y: bounds.maxY - 26.45), controlPoint1: NSPoint(x: bounds.minX + 136.16, y: bounds.maxY - 27.13), controlPoint2: NSPoint(x: bounds.minX + 136.93, y: bounds.maxY - 26.45))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 138.9, y: bounds.maxY - 26.55), controlPoint1: NSPoint(x: bounds.minX + 138.32, y: bounds.maxY - 26.45), controlPoint2: NSPoint(x: bounds.minX + 138.77, y: bounds.maxY - 26.5))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 138.9, y: bounds.maxY - 24.97))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 138.19, y: bounds.maxY - 24.9), controlPoint1: NSPoint(x: bounds.minX + 138.74, y: bounds.maxY - 24.93), controlPoint2: NSPoint(x: bounds.minX + 138.44, y: bounds.maxY - 24.9))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 136.22, y: bounds.maxY - 26.18), controlPoint1: NSPoint(x: bounds.minX + 137.23, y: bounds.maxY - 24.9), controlPoint2: NSPoint(x: bounds.minX + 136.42, y: bounds.maxY - 25.45))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 136.1, y: bounds.maxY - 26.18))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 136.1, y: bounds.maxY - 25.02))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 134.47, y: bounds.maxY - 25.02))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 134.47, y: bounds.maxY - 32.5))
        addWalletAddressCopyPath.close()
        addWalletAddressCopyPath.move(to: NSPoint(x: bounds.minX + 143.24, y: bounds.maxY - 26.22))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 141.44, y: bounds.maxY - 28.04), controlPoint1: NSPoint(x: bounds.minX + 142.23, y: bounds.maxY - 26.22), controlPoint2: NSPoint(x: bounds.minX + 141.52, y: bounds.maxY - 26.94))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 144.96, y: bounds.maxY - 28.04))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 143.24, y: bounds.maxY - 26.22), controlPoint1: NSPoint(x: bounds.minX + 144.93, y: bounds.maxY - 26.93), controlPoint2: NSPoint(x: bounds.minX + 144.26, y: bounds.maxY - 26.22))
        addWalletAddressCopyPath.close()
        addWalletAddressCopyPath.move(to: NSPoint(x: bounds.minX + 144.98, y: bounds.maxY - 30.44))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 146.58, y: bounds.maxY - 30.44))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 143.26, y: bounds.maxY - 32.65), controlPoint1: NSPoint(x: bounds.minX + 146.26, y: bounds.maxY - 31.8), controlPoint2: NSPoint(x: bounds.minX + 145.02, y: bounds.maxY - 32.65))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 139.73, y: bounds.maxY - 28.79), controlPoint1: NSPoint(x: bounds.minX + 141.06, y: bounds.maxY - 32.65), controlPoint2: NSPoint(x: bounds.minX + 139.73, y: bounds.maxY - 31.19))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 143.25, y: bounds.maxY - 24.87), controlPoint1: NSPoint(x: bounds.minX + 139.73, y: bounds.maxY - 26.38), controlPoint2: NSPoint(x: bounds.minX + 141.08, y: bounds.maxY - 24.87))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 146.66, y: bounds.maxY - 28.64), controlPoint1: NSPoint(x: bounds.minX + 145.38, y: bounds.maxY - 24.87), controlPoint2: NSPoint(x: bounds.minX + 146.66, y: bounds.maxY - 26.29))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 146.66, y: bounds.maxY - 29.19))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 141.43, y: bounds.maxY - 29.19))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 141.43, y: bounds.maxY - 29.28))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 143.31, y: bounds.maxY - 31.3), controlPoint1: NSPoint(x: bounds.minX + 141.48, y: bounds.maxY - 30.52), controlPoint2: NSPoint(x: bounds.minX + 142.19, y: bounds.maxY - 31.3))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 144.98, y: bounds.maxY - 30.44), controlPoint1: NSPoint(x: bounds.minX + 144.15, y: bounds.maxY - 31.3), controlPoint2: NSPoint(x: bounds.minX + 144.73, y: bounds.maxY - 31))
        addWalletAddressCopyPath.close()
        addWalletAddressCopyPath.move(to: NSPoint(x: bounds.minX + 148.19, y: bounds.maxY - 27.16))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 150.3, y: bounds.maxY - 29.28), controlPoint1: NSPoint(x: bounds.minX + 148.19, y: bounds.maxY - 28.29), controlPoint2: NSPoint(x: bounds.minX + 148.86, y: bounds.maxY - 28.95))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 151.63, y: bounds.maxY - 29.59))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 152.66, y: bounds.maxY - 30.44), controlPoint1: NSPoint(x: bounds.minX + 152.34, y: bounds.maxY - 29.75), controlPoint2: NSPoint(x: bounds.minX + 152.66, y: bounds.maxY - 30.01))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 151.21, y: bounds.maxY - 31.37), controlPoint1: NSPoint(x: bounds.minX + 152.66, y: bounds.maxY - 30.99), controlPoint2: NSPoint(x: bounds.minX + 152.06, y: bounds.maxY - 31.37))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 149.67, y: bounds.maxY - 30.48), controlPoint1: NSPoint(x: bounds.minX + 150.36, y: bounds.maxY - 31.37), controlPoint2: NSPoint(x: bounds.minX + 149.84, y: bounds.maxY - 31.04))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 148, y: bounds.maxY - 30.48))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 151.17, y: bounds.maxY - 32.65), controlPoint1: NSPoint(x: bounds.minX + 148.13, y: bounds.maxY - 31.84), controlPoint2: NSPoint(x: bounds.minX + 149.3, y: bounds.maxY - 32.65))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 154.35, y: bounds.maxY - 30.26), controlPoint1: NSPoint(x: bounds.minX + 153.03, y: bounds.maxY - 32.65), controlPoint2: NSPoint(x: bounds.minX + 154.35, y: bounds.maxY - 31.69))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 152.26, y: bounds.maxY - 28.22), controlPoint1: NSPoint(x: bounds.minX + 154.35, y: bounds.maxY - 29.16), controlPoint2: NSPoint(x: bounds.minX + 153.69, y: bounds.maxY - 28.54))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 150.94, y: bounds.maxY - 27.92))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 149.84, y: bounds.maxY - 27.07), controlPoint1: NSPoint(x: bounds.minX + 150.19, y: bounds.maxY - 27.75), controlPoint2: NSPoint(x: bounds.minX + 149.84, y: bounds.maxY - 27.49))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 151.19, y: bounds.maxY - 26.16), controlPoint1: NSPoint(x: bounds.minX + 149.84, y: bounds.maxY - 26.53), controlPoint2: NSPoint(x: bounds.minX + 150.42, y: bounds.maxY - 26.16))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 152.6, y: bounds.maxY - 27.02), controlPoint1: NSPoint(x: bounds.minX + 151.98, y: bounds.maxY - 26.16), controlPoint2: NSPoint(x: bounds.minX + 152.48, y: bounds.maxY - 26.49))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 154.2, y: bounds.maxY - 27.02))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 151.18, y: bounds.maxY - 24.87), controlPoint1: NSPoint(x: bounds.minX + 154.07, y: bounds.maxY - 25.66), controlPoint2: NSPoint(x: bounds.minX + 152.96, y: bounds.maxY - 24.87))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 148.19, y: bounds.maxY - 27.16), controlPoint1: NSPoint(x: bounds.minX + 149.42, y: bounds.maxY - 24.87), controlPoint2: NSPoint(x: bounds.minX + 148.19, y: bounds.maxY - 25.81))
        addWalletAddressCopyPath.close()
        addWalletAddressCopyPath.move(to: NSPoint(x: bounds.minX + 155.76, y: bounds.maxY - 27.16))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 157.87, y: bounds.maxY - 29.28), controlPoint1: NSPoint(x: bounds.minX + 155.76, y: bounds.maxY - 28.29), controlPoint2: NSPoint(x: bounds.minX + 156.44, y: bounds.maxY - 28.95))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 159.2, y: bounds.maxY - 29.59))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 160.23, y: bounds.maxY - 30.44), controlPoint1: NSPoint(x: bounds.minX + 159.91, y: bounds.maxY - 29.75), controlPoint2: NSPoint(x: bounds.minX + 160.23, y: bounds.maxY - 30.01))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 158.78, y: bounds.maxY - 31.37), controlPoint1: NSPoint(x: bounds.minX + 160.23, y: bounds.maxY - 30.99), controlPoint2: NSPoint(x: bounds.minX + 159.64, y: bounds.maxY - 31.37))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 157.25, y: bounds.maxY - 30.48), controlPoint1: NSPoint(x: bounds.minX + 157.94, y: bounds.maxY - 31.37), controlPoint2: NSPoint(x: bounds.minX + 157.41, y: bounds.maxY - 31.04))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 155.57, y: bounds.maxY - 30.48))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 158.74, y: bounds.maxY - 32.65), controlPoint1: NSPoint(x: bounds.minX + 155.7, y: bounds.maxY - 31.84), controlPoint2: NSPoint(x: bounds.minX + 156.88, y: bounds.maxY - 32.65))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 161.93, y: bounds.maxY - 30.26), controlPoint1: NSPoint(x: bounds.minX + 160.61, y: bounds.maxY - 32.65), controlPoint2: NSPoint(x: bounds.minX + 161.93, y: bounds.maxY - 31.69))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 159.84, y: bounds.maxY - 28.22), controlPoint1: NSPoint(x: bounds.minX + 161.93, y: bounds.maxY - 29.16), controlPoint2: NSPoint(x: bounds.minX + 161.27, y: bounds.maxY - 28.54))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 158.52, y: bounds.maxY - 27.92))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 157.41, y: bounds.maxY - 27.07), controlPoint1: NSPoint(x: bounds.minX + 157.77, y: bounds.maxY - 27.75), controlPoint2: NSPoint(x: bounds.minX + 157.41, y: bounds.maxY - 27.49))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 158.76, y: bounds.maxY - 26.16), controlPoint1: NSPoint(x: bounds.minX + 157.41, y: bounds.maxY - 26.53), controlPoint2: NSPoint(x: bounds.minX + 157.99, y: bounds.maxY - 26.16))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 160.18, y: bounds.maxY - 27.02), controlPoint1: NSPoint(x: bounds.minX + 159.56, y: bounds.maxY - 26.16), controlPoint2: NSPoint(x: bounds.minX + 160.06, y: bounds.maxY - 26.49))
        addWalletAddressCopyPath.line(to: NSPoint(x: bounds.minX + 161.77, y: bounds.maxY - 27.02))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 158.76, y: bounds.maxY - 24.87), controlPoint1: NSPoint(x: bounds.minX + 161.65, y: bounds.maxY - 25.66), controlPoint2: NSPoint(x: bounds.minX + 160.53, y: bounds.maxY - 24.87))
        addWalletAddressCopyPath.curve(to: NSPoint(x: bounds.minX + 155.76, y: bounds.maxY - 27.16), controlPoint1: NSPoint(x: bounds.minX + 156.99, y: bounds.maxY - 24.87), controlPoint2: NSPoint(x: bounds.minX + 155.76, y: bounds.maxY - 25.81))
        addWalletAddressCopyPath.close()
        addWalletAddressCopyPath.windingRule = .evenOddWindingRule
        fillColor4.setFill()
        addWalletAddressCopyPath.fill()
    }
    
}
