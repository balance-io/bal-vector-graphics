//
//  TypeAliases.swift
//  BalanceVectorGraphics
//
//  Created by Benjamin Baron on 12/10/16.
//  Copyright © 2016 Balanced Software. All rights reserved.
//

import Foundation

#if os(OSX)
    public typealias Rect  = NSRect
    public typealias Size  = NSSize
    public typealias Point = NSPoint
    public typealias Color = NSColor
    public typealias Font  = NSFont
#else
    public typealias Rect  = CGRect
    public typealias Size  = CGSize
    public typealias Point = CGPoint
    public typealias Color = UIColor
    public typealias Font  = UIFont
#endif

public typealias DrawingFunction = (_ frame: Rect) -> (Void)
public typealias ButtonDrawingFunction = (_ frame: Rect, _ original: Bool, _ pressed: Bool) -> Void
public typealias TextButtonDrawingFunction = (_ frame: Rect, _ buttonText: String, _ original: Bool, _ pressed: Bool, _ buttonTextColor: Color) -> Void
