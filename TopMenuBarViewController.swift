//
//  TopMenuBarViewController.swift
//  Secure Antivirus
//
//  Created by Dhruv Patel on 21/04/17.
//  Copyright © 2017 Devang vadalia. All rights reserved.
//

import Foundation
import Cocoa
let storyBoard = NSStoryboard(name: "StoryBoard", bundle: nil) as NSStoryboard
var objDashBoard = DashBoardViewController()
var objBottomoView = BottomViewController()

class TopMenuBarViewController :NSViewController
{
    @IBOutlet var backView: NSView!
    
    @IBOutlet var btnDashBoard: NSButton!
    @IBOutlet var btnScan: NSButton!
    @IBOutlet var btnReport: NSButton!
    @IBOutlet var btnShield: NSButton!
    
    override func viewDidLoad() {
        self.backView.wantsLayer = true
        self.backView.layer?.backgroundColor = NSColor.black.cgColor
    }
    
    
    @IBAction func dashBoardClicked(_ sender: Any) {
        
        btnDashBoard.image = NSImage.init(named: "Home_Orange")
        btnScan.image = NSImage.init(named: "Scan_White")
        btnReport.image = NSImage.init(named: "Report_White")
        btnShield.image = NSImage.init(named: "Shield_White")
        
        objDashBoard = storyBoard.instantiateController(withIdentifier: "DashBoardVC") as! DashBoardViewController
        self.presentViewControllerAsModalWindow(objDashBoard)
        
    }
    
    @IBAction func scanClicked(_ sender: Any) {
        
        btnDashBoard.image = NSImage.init(named: "Home_White")
        btnScan.image = NSImage.init(named: "Scan_Orange")
        btnReport.image = NSImage.init(named: "Report_White")
        btnShield.image = NSImage.init(named: "Shield_White")
    }
    
    @IBAction func reportsClicked(_ sender: Any) {
        
        btnDashBoard.image = NSImage.init(named: "Home_White")
        btnScan.image = NSImage.init(named: "Scan_White")
        btnReport.image = NSImage.init(named: "Report_Orange")
        btnShield.image = NSImage.init(named: "Shield_White")
    }
    
    @IBAction func shieldClicked(_ sender: Any) {
        
        btnDashBoard.image = NSImage.init(named: "Home_White")
        btnScan.image = NSImage.init(named: "Scan_White")
        btnReport.image = NSImage.init(named: "Report_White")
        btnShield.image = NSImage.init(named: "Shield_Orange")
    }
    
}
