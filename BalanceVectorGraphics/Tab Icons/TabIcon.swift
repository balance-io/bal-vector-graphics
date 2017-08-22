//
//  TabIcon.swift
//  Bal
//
//  Created by Benjamin Baron on 6/7/16.
//  Copyright © 2016 Balanced Software, Inc. All rights reserved.
//

import Foundation

@objc public protocol TabIcon {
    var alphaValue: CGFloat { get set }
    var tabIconColor: NSColor! { get set }
    var tabIconBorderColor: NSColor! { get set }
    var tabIconSelectedColor: NSColor! { get set }
    func addHighlightAnimation(reverseAnimation: Bool, completionBlock: ((_ finished: Bool) -> Void)?)
}
