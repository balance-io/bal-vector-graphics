//
//  AppDelegate.swift
//  BalanceVectorGraphicsTestApp
//
//  Created by Benjamin Baron on 12/8/16.
//  Copyright © 2016 Balanced Software. All rights reserved.
//

import Cocoa
import BalanceVectorGraphics

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!

    let syncButton = SyncButton(frame: CGRect(x: 100, y: 100, width: 26, height: 26))

    func applicationDidFinishLaunching(_ aNotification: Notification) {
//        if let headerView = InstitutionHeaders.headerViewForId(sourceInstitutionId: "chase") {
//            headerView.frame.origin.y = 10
//            self.window!.contentView!.addSubview(headerView)
//        }
//        
//        if let headerView = InstitutionHeaders.headerViewForId(sourceInstitutionId: "bofa") {
//            headerView.frame.origin.y = 300
//            self.window!.contentView!.addSubview(headerView)
//        }
//        
//        if let headerView = InstitutionHeaders.defaultHeaderView(backgroundColor: NSColor.red, foregroundColor: NSColor.white, font: NSFont.systemFont(ofSize: 11, weight: NSFontWeightMedium), name: "Simple") {
//            headerView.frame.origin.y = 100
//            self.window!.contentView!.addSubview(headerView)
//        }
//        
//        if let headerView = InstitutionHeaders.defaultHeaderView(backgroundColor: NSColor(deviceRed: 0.243, green: 0.278, blue: 0.298, alpha: 1), foregroundColor: NSColor.white, font: NSFont.systemFont(ofSize: 11, weight: NSFontWeightSemibold), name: "Bank of America With A Really Really Long Name That Should Clip Because I Made It Way Too Long") {
//            headerView.frame.origin.y = 200
//            self.window!.contentView!.addSubview(headerView)
//        }
        
        self.window!.contentView!.addSubview(syncButton)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

