//
//  WeatherVC.swift
//  Weathered
//
//  Created by Robert Elser on 31/10/2017.
//  Copyright © 2017 Biomesh Studios, Ltd. All rights reserved.
//

import Cocoa

class WeatherVC: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }

//    override func viewWillAppear() {
//        <#code#>
//    }
    
    override func viewDidAppear() {
        self.view.layer?.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
    }
    
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

