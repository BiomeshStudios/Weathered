//
//  AppDelegate.swift
//  Weathered
//
//  Created by Robert Elser on 31/10/2017.
//  Copyright © 2017 Biomesh Studios, Ltd. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    // Variables
    let statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
    

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        statusItem.button?.title = "--°"
        statusItem.action = #selector(AppDelegate.displayPopUp(_:))
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    @objc func displayPopUp(_ sender: AnyObject?) {
        let storyboard = NSStoryboard(name: NSStoryboard.Name(rawValue: "Main"), bundle: nil)
        guard let vc = storyboard.instantiateController(withIdentifier: NSStoryboard.SceneIdentifier(rawValue: "WeatherVC")) as? NSViewController else { return }
        let popoverView = NSPopover()
        popoverView.contentViewController = vc
        popoverView.behavior = .transient
        popoverView.show(relativeTo: statusItem.button!.bounds, of: statusItem.button!, preferredEdge: .maxY)
    }
    

}

