//
//  AppDelegate.swift
//  DecnetCalc
//
//  Created by Jordi Guillaumes Pons on 10/02/2019.
//  Copyright © 2019 Jordi Guillaumes Pons. All rights reserved.
//

import Cocoa

@NSApplicationMain

class AppDelegate: NSObject, NSApplicationDelegate {
    
    var wc: WindowController?
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        let wc = WindowController()
        wc.showWindow(self)
        self.wc = wc
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true
    }

}

