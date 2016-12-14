//
//  SubscriptionButtons.swift
//  Balance
//
//  Created by Team Balance on 9/27/16.
//  Copyright (c) 2016 Balance. All rights reserved.
//
//  Generated by PaintCode (www.paintcodeapp.com)
//



import Cocoa

open class BillingButtons : NSObject {

    //// Drawing Methods

    open class func drawCurrentPlan(frame: NSRect = NSMakeRect(0, 0, 80, 25), buttonText: String = "Current Plan", original: Bool = true, pressed: Bool = false, buttonTextColor: NSColor) {
        //// General Declarations
        let context = NSGraphicsContext.current()!.cgContext

        //// Color Declarations
        let button = NSColor(deviceRed: 0, green: 0, blue: 0, alpha: 0.26)
        let buttonTextColor = buttonTextColor

        //// Shadow Declarations
        let shadow = NSShadow()
        shadow.shadowColor = NSColor.black.withAlphaComponent(0.04)
        shadow.shadowOffset = NSMakeSize(0.1, 0.1)
        shadow.shadowBlurRadius = 5

        //// Rectangle Drawing
        let rectanglePath = NSBezierPath(roundedRect: NSMakeRect(frame.minX, frame.minY, frame.width, frame.height), xRadius: 4.5, yRadius: 4.5)
        button.setFill()
        rectanglePath.fill()

        ////// Rectangle Inner Shadow
        NSGraphicsContext.saveGraphicsState()
        NSRectClip(rectanglePath.bounds)
        context.setShadow(offset: CGSize.zero, blur: 0, color: nil)

        context.setAlpha(shadow.shadowColor!.alphaComponent)
        context.beginTransparencyLayer(auxiliaryInfo: nil)
        let rectangleOpaqueShadow = NSShadow()
        rectangleOpaqueShadow.shadowColor = shadow.shadowColor!.withAlphaComponent(1)
        rectangleOpaqueShadow.shadowOffset = shadow.shadowOffset
        rectangleOpaqueShadow.shadowBlurRadius = shadow.shadowBlurRadius
        rectangleOpaqueShadow.set()

        context.setBlendMode(.sourceOut)
        context.beginTransparencyLayer(auxiliaryInfo: nil)

        rectangleOpaqueShadow.shadowColor!.setFill()
        rectanglePath.fill()

        context.endTransparencyLayer()
        context.endTransparencyLayer()
        NSGraphicsContext.restoreGraphicsState()



        //// Text Drawing
        let textRect = NSMakeRect(frame.minX + floor((frame.width - 74) * 0.50000 + 0.5), frame.minY + floor((frame.height - 14) * 0.54545 + 0.5), 74, 14)
        let textStyle = NSMutableParagraphStyle()
        textStyle.alignment = .center

        let textFontAttributes = [NSFontAttributeName: NSFont.mediumSystemFont(ofSize: 12), NSForegroundColorAttributeName: buttonTextColor, NSParagraphStyleAttributeName: textStyle]

        let textTextHeight: CGFloat = NSString(string: buttonText).boundingRect(with: NSMakeSize(textRect.width, CGFloat.infinity), options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: textFontAttributes).size.height
        let textTextRect: NSRect = NSMakeRect(textRect.minX, textRect.minY + (textRect.height - textTextHeight) / 2, textRect.width, textTextHeight)
        NSGraphicsContext.saveGraphicsState()
        NSRectClip(textRect)
        NSString(string: buttonText).draw(in: NSOffsetRect(textTextRect, 0, 1), withAttributes: textFontAttributes)
        NSGraphicsContext.restoreGraphicsState()
    }

    open class func drawUpgrade(frame: NSRect = NSMakeRect(0, 0, 86, 28), buttonText: String = "Current Plan", original: Bool = true, pressed: Bool = false, buttonTextColor: NSColor) {
        //// General Declarations
        let context = NSGraphicsContext.current()!.cgContext

        //// Color Declarations
        let buttonTextColor = buttonTextColor
        let white = NSColor(deviceRed: 1, green: 1, blue: 1, alpha: 1)

        //// Shadow Declarations
        let upgradeButtonShadow = NSShadow()
        upgradeButtonShadow.shadowColor = NSColor.black.withAlphaComponent(0.08)
        upgradeButtonShadow.shadowOffset = NSMakeSize(0.1, -1.1)
        upgradeButtonShadow.shadowBlurRadius = 2

        if (original) {
            //// buttonUpgrade Drawing
            let buttonUpgradePath = NSBezierPath(roundedRect: NSMakeRect(frame.minX + 2, frame.minY + 3, frame.width - 4, frame.height - 4), xRadius: 4.5, yRadius: 4.5)
            NSGraphicsContext.saveGraphicsState()
            upgradeButtonShadow.set()
            white.setFill()
            buttonUpgradePath.fill()
            NSGraphicsContext.restoreGraphicsState()

        }


        if (pressed) {
            //// buttonUpgradePressed
            NSGraphicsContext.saveGraphicsState()
            context.setAlpha(0.7)
            context.beginTransparencyLayer(auxiliaryInfo: nil)


            //// Background Drawing
            let backgroundPath = NSBezierPath(roundedRect: NSMakeRect(frame.minX + 2, frame.minY + frame.height - 25, 82, 24), xRadius: 4.5, yRadius: 4.5)
            NSGraphicsContext.saveGraphicsState()
            upgradeButtonShadow.set()
            white.setFill()
            backgroundPath.fill()
            NSGraphicsContext.restoreGraphicsState()



            context.endTransparencyLayer()
            NSGraphicsContext.restoreGraphicsState()
        }


        //// Text Drawing
        let textRect = NSMakeRect(frame.minX + floor((frame.width - 74) * 0.50000 + 0.5), frame.minY + floor((frame.height - 14) * 0.57143 + 0.5), 74, 14)
        let textStyle = NSMutableParagraphStyle()
        textStyle.alignment = .center

        let textFontAttributes = [NSFontAttributeName: NSFont.mediumSystemFont(ofSize: 12), NSForegroundColorAttributeName: buttonTextColor, NSParagraphStyleAttributeName: textStyle]

        let textTextHeight: CGFloat = NSString(string: buttonText).boundingRect(with: NSMakeSize(textRect.width, CGFloat.infinity), options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: textFontAttributes).size.height
        let textTextRect: NSRect = NSMakeRect(textRect.minX, textRect.minY + (textRect.height - textTextHeight) / 2, textRect.width, textTextHeight)
        NSGraphicsContext.saveGraphicsState()
        NSRectClip(textRect)
        NSString(string: buttonText).draw(in: NSOffsetRect(textTextRect, 0, 1), withAttributes: textFontAttributes)
        NSGraphicsContext.restoreGraphicsState()
    }

    open class func drawDowngrade(frame: NSRect = NSMakeRect(0, 0, 86, 28), buttonText: String = "Current Plan", original: Bool = true, pressed: Bool = false, buttonTextColor: NSColor) {
        //// General Declarations
        let context = NSGraphicsContext.current()!.cgContext

        //// Color Declarations
        let buttonTextColor = buttonTextColor
        let downgradeButtonShadowColor = NSColor(deviceRed: 0, green: 0, blue: 0, alpha: 1)
        let downgradeBackground = NSColor(deviceRed: 0, green: 0, blue: 0, alpha: 0.24)
        let downgradePressedBackground = NSColor(deviceRed: 0, green: 0, blue: 0, alpha: 0.36)
        let downgradeButtonInnerStroke = NSColor(deviceRed: 0, green: 0, blue: 0, alpha: 0.04)

        //// Shadow Declarations
        let downgradeButtonShadow = NSShadow()
        downgradeButtonShadow.shadowColor = downgradeButtonShadowColor.withAlphaComponent(0.06 * downgradeButtonShadowColor.alphaComponent)
        downgradeButtonShadow.shadowOffset = NSMakeSize(0.1, -1.1)
        downgradeButtonShadow.shadowBlurRadius = 2


        //// Subframes
        let buttonDowngrade: NSRect = NSMakeRect(frame.minX + 2, frame.minY + 3, frame.width - 4, frame.height - 4)
        let buttonDowngradePressed: NSRect = NSMakeRect(frame.minX + 2, frame.minY + 3, frame.width - 4, frame.height - 4)


        if (original) {
            //// buttonDowngrade
            NSGraphicsContext.saveGraphicsState()
            downgradeButtonShadow.set()
            context.beginTransparencyLayer(auxiliaryInfo: nil)

            //// Clip Clip
            let clipPath = NSBezierPath(roundedRect: NSMakeRect(buttonDowngrade.minX + floor(buttonDowngrade.width * 0.00000 + 0.5), buttonDowngrade.minY + floor(buttonDowngrade.height * 0.00000 + 0.5), floor(buttonDowngrade.width * 1.00000 + 0.5) - floor(buttonDowngrade.width * 0.00000 + 0.5), floor(buttonDowngrade.height * 1.00000 + 0.5) - floor(buttonDowngrade.height * 0.00000 + 0.5)), xRadius: 4.5, yRadius: 4.5)
            clipPath.addClip()


            //// Background Drawing
            let backgroundPath = NSBezierPath(roundedRect: NSMakeRect(buttonDowngrade.minX + floor(buttonDowngrade.width * 0.00000 + 0.5), buttonDowngrade.minY + floor(buttonDowngrade.height * 0.00000 + 0.5), floor(buttonDowngrade.width * 1.00000 + 0.5) - floor(buttonDowngrade.width * 0.00000 + 0.5), floor(buttonDowngrade.height * 1.00000 + 0.5) - floor(buttonDowngrade.height * 0.00000 + 0.5)), xRadius: 4.5, yRadius: 4.5)
            downgradeBackground.setFill()
            backgroundPath.fill()
            downgradeButtonInnerStroke.setStroke()
            backgroundPath.lineWidth = 1
            backgroundPath.stroke()


            context.endTransparencyLayer()
            NSGraphicsContext.restoreGraphicsState()
        }


        if (pressed) {
            //// buttonDowngradePressed
            NSGraphicsContext.saveGraphicsState()
            downgradeButtonShadow.set()
            context.beginTransparencyLayer(auxiliaryInfo: nil)

            //// Clip Clip 2
            let clip2Path = NSBezierPath(roundedRect: NSMakeRect(buttonDowngradePressed.minX + floor(buttonDowngradePressed.width * 0.00000 + 0.5), buttonDowngradePressed.minY + floor(buttonDowngradePressed.height * 0.00000 + 0.5), floor(buttonDowngradePressed.width * 1.00000 + 0.5) - floor(buttonDowngradePressed.width * 0.00000 + 0.5), floor(buttonDowngradePressed.height * 1.00000 + 0.5) - floor(buttonDowngradePressed.height * 0.00000 + 0.5)), xRadius: 4.5, yRadius: 4.5)
            clip2Path.addClip()


            //// Background 2 Drawing
            let background2Path = NSBezierPath(roundedRect: NSMakeRect(buttonDowngradePressed.minX + floor(buttonDowngradePressed.width * 0.00000 + 0.5), buttonDowngradePressed.minY + floor(buttonDowngradePressed.height * 0.00000 + 0.5), floor(buttonDowngradePressed.width * 1.00000 + 0.5) - floor(buttonDowngradePressed.width * 0.00000 + 0.5), floor(buttonDowngradePressed.height * 1.00000 + 0.5) - floor(buttonDowngradePressed.height * 0.00000 + 0.5)), xRadius: 4.5, yRadius: 4.5)
            downgradePressedBackground.setFill()
            background2Path.fill()
            downgradeButtonInnerStroke.setStroke()
            background2Path.lineWidth = 1
            background2Path.stroke()


            context.endTransparencyLayer()
            NSGraphicsContext.restoreGraphicsState()
        }


        //// Text Drawing
        let textRect = NSMakeRect(frame.minX + floor((frame.width - 74) * 0.50000 + 0.5), frame.minY + floor((frame.height - 14) * 0.57143 + 0.5), 74, 14)
        let textStyle = NSMutableParagraphStyle()
        textStyle.alignment = .center

        let textFontAttributes = [NSFontAttributeName: NSFont.mediumSystemFont(ofSize: 12), NSForegroundColorAttributeName: buttonTextColor, NSParagraphStyleAttributeName: textStyle]

        let textTextHeight: CGFloat = NSString(string: buttonText).boundingRect(with: NSMakeSize(textRect.width, CGFloat.infinity), options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: textFontAttributes).size.height
        let textTextRect: NSRect = NSMakeRect(textRect.minX, textRect.minY + (textRect.height - textTextHeight) / 2, textRect.width, textTextHeight)
        NSGraphicsContext.saveGraphicsState()
        NSRectClip(textRect)
        NSString(string: buttonText).draw(in: NSOffsetRect(textTextRect, 0, 1), withAttributes: textFontAttributes)
        NSGraphicsContext.restoreGraphicsState()
    }

}
