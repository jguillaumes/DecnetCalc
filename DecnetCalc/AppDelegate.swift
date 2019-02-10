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

    @IBOutlet weak var window: NSWindow!

    @IBOutlet weak var dnArea: NSTextField!
    @IBOutlet weak var dnNode: NSTextField!
    @IBOutlet weak var macAddress: NSTextField!
    
    @IBAction func computeMac(_ sender: NSTextField) {
        
        if sender == dnArea || sender == dnNode {
        
            let nArea = dnArea.integerValue
            let nNode = dnNode.integerValue
            let dnAddress = 1024 * nArea + nNode
            let hexAddress = String(dnAddress, radix:16, uppercase: true)
            let byteOne = String(hexAddress.prefix(2))
            let byteTwo = String(hexAddress.suffix(2))
        
            macAddress.stringValue = "0A:00:04:00:\(byteTwo):\(byteOne)"
        }
    }
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        
        dnArea.stringValue = "7"
        dnNode.stringValue = "61"
        computeMac(dnNode)
        
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

}

