//
//  WindowController.swift
//  DecnetCalc
//
//  Created by Jordi Guillaumes Pons on 11/02/2019.
//  Copyright © 2019 Jordi Guillaumes Pons. All rights reserved.
//

import Cocoa

class WindowController: NSWindowController {

    @IBOutlet weak var dnArea: NSTextField!
    @IBOutlet weak var dnNode: NSTextField!
    @IBOutlet weak var macAddress: NSTextField!
    
    override var windowNibName: String? {
        return "WindowController"
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()

        dnArea.stringValue = "7"
        dnNode.stringValue = "61"
        computeMac()
    }
        
    @IBAction func handleArea(_ sender: NSTextField) {
        computeMac()
    }
    
    @IBAction func handleNode(_ sender: NSTextField) {
        computeMac()
    }
    
    func computeMac() {
        
        let nArea = dnArea.integerValue
        let nNode = dnNode.integerValue
        let dnAddress = 1024 * nArea + nNode
        let hexAddress = String(dnAddress, radix:16, uppercase: true)
        let byteOne = String(hexAddress.prefix(2))
        let byteTwo = String(hexAddress.suffix(2))
        
        macAddress.stringValue = "0A:00:04:00:\(byteTwo):\(byteOne)"
    }
    
}
