//
//  NSFont.swift
//  vectordrawing
//
//  Created by Benjamin Baron on 12/5/16.
//  Copyright © 2016 Balanced Software. All rights reserved.
//

import Foundation

extension NSFont {
    internal static func semiboldSystemFont(ofSize size: CGFloat) -> NSFont {
        if #available(OSX 10.11, *) {
            return NSFont.systemFont(ofSize: size, weight: NSFont.Weight.semibold)
        } else {
            return NSFont(name: "HelveticaNeue-Medium", size: size)!
        }
    }
    
    internal static func mediumSystemFont(ofSize size: CGFloat) -> NSFont {
        if #available(OSX 10.11, *) {
            return NSFont.systemFont(ofSize: size, weight: NSFont.Weight.medium)
        } else {
            return NSFont(name: "HelveticaNeue-Medium", size: size)!
        }
    }
    
    internal static func lightSystemFont(ofSize size: CGFloat) -> NSFont {
        if #available(OSX 10.11, *) {
            return NSFont.systemFont(ofSize: size, weight: NSFont.Weight.light)
        } else {
            return NSFont(name: "HelveticaNeue-Light", size: size)!
        }
    }
}
