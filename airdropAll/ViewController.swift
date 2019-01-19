//
//  ViewController.swift
//  airdropAll
//
//  Created by base on 19/1/19.
//  Copyright © 2019 base. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func sender(_ sender: Any) {
        print("hi")
        let text:[NSAttributedString] = [NSAttributedString(string: "Hello")]
        
        let service : NSSharingService = NSSharingService(named: .sendViaAirDrop)!
        let file : URL = NSURL.fileURL(withPath: "/Users/base/hello.txt")

        print(NSSharingService.sharingServices(forItems: [file]))
        print(service.canPerform(withItems: text))
        service.perform(withItems: [file])
        
    }
    
}

