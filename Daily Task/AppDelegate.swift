//
//  AppDelegate.swift
//  Daily Task
//
//  Created by K Praveen Kumar on 02/12/22.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    var item : NSStatusItem? = nil

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        
        item = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
        //item?.button?.title = "Daily Task"
        item?.button?.image = NSImage(named: "DailyTodo")
        
        
        let menu = NSMenu()
        menu.addItem(withTitle: "Naukri", action: #selector(AppDelegate.OpenNaukri), keyEquivalent: "n")
        menu.addItem(withTitle: "LinkedIn", action: #selector(AppDelegate.OpenLinkedIn), keyEquivalent: "l")
        menu.addItem(withTitle: "Kibho", action: #selector(AppDelegate.OpenKibho), keyEquivalent: "k")
        
        item?.menu = menu
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }


    @objc func OpenNaukri(){
        //Open Naukri from Chrome
    }
    @objc func OpenLinkedIn(){
        //Open LinkedIn from Chrome
    }
    @objc func OpenKibho(){
        //Open Kibho from Chrome
    }
}

