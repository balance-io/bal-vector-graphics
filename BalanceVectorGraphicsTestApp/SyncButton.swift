//
//  SyncButton.swift
//  Bal
//
//  Created by Benjamin Baron on 12/14/16.
//  Copyright © 2016 Balanced Software, Inc. All rights reserved.
//

import Foundation
import BalanceVectorGraphics

class SyncButton: NSView {
    let syncCircle = SyncCircle(syncCircleColor: .gray)
    
    fileprivate var isAnimating = false
    fileprivate var stopSyncingAnimation = false
    fileprivate var textUpdateTimer: Timer?
    
    override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        fatalError("unsupported")
    }
    
    fileprivate func commonInit() {
        syncCircle.frame = NSRect(x: 0, y: 0, width: 26, height: 26)
        self.addSubview(syncCircle)
    }
    
    fileprivate func startSyncAnimation() {
        isAnimating = true
        syncCircle.addStartSyncingAnimation { _ in
            self.continueSyncAnimation()
        }
    }
    
    fileprivate func continueSyncAnimation() {
        if stopSyncingAnimation {
            syncCircle.addFinishSyncingAnimation { _ in
                self.syncCircle.resetLayerProperties(forLayerIdentifiers: nil)
                self.isAnimating = false
                
                DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(5)) {
                    self.mouseUp(with: NSEvent())
                }
            }
            stopSyncingAnimation = false
        } else {
            syncCircle.addSyncingAnimation { _ in
                self.continueSyncAnimation()
            }
        }
    }

    override func mouseUp(with theEvent: NSEvent) {
        if !isAnimating {
            startSyncAnimation()
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(5)) {
                self.stopSyncingAnimation = true
            }
        }
    }
}
