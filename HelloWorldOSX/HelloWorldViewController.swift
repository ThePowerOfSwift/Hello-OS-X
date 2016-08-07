//
//  HelloWorldViewController.swift
//  HelloWorldOSX
//
//  Created by Mihail Șalari on 8/7/16.
//  Copyright © 2016 Mihail Șalari. All rights reserved.
//

import Cocoa

class HelloWorldViewController: NSViewController {
    
    // MARK: - Property
    
    @IBOutlet weak var helloLabel: NSTextField!
    @IBOutlet weak var helloButton: NSButton!
    
    private let sayHello = "Hello OS X!"
    
    // MARK: - Lyfe Cicle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.hideShowLabel(true)
    }
    
    override var representedObject: AnyObject? {
        didSet {
            // Update the view, if already loaded.
        }
    }
    
    
    // MARK: - UI
    
    func hideShowLabel(isHidden: Bool) {
        self.helloLabel.hidden = isHidden
    }
    
    
    
    
    // MARK: - IBAction's
    
    @IBAction func sayHelloButtonPressed(sender: NSButton) {
        self.hideShowLabel(false)
        self.helloLabel.stringValue = sayHello
        self.helloButton.hidden = true
    }
}
