//
//  ViewController.swift
//  addMessageTest
//
//  Created by Gareth Miller on 27/03/2018.
//  Copyright © 2018 Gareth Miller. All rights reserved.
//

import UIKit
import os.log

class ViewController: UIViewController, UITextFieldDelegate {

    // MARK: Properties
    
    @IBOutlet weak var appName: UITextField!
    
    
    var app: App?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        appName.delegate = self
        
        if let app = app {
            appName.text = app.name
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

