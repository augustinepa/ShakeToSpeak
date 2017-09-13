//
//  ViewController.swift
//  ShakeSpeak
//
//  Created by A, Augustine on 9/13/17.
//  Copyright © 2017 A, Augustine. All rights reserved.
//

import UIKit

class ViewController: UIViewController, VAShakeUtilDelegate {
    
    var listening: Bool = false
    
    @IBOutlet weak var lblMessage: UILabel!

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        lblMessage.text = "Shake to start listening"
        
        VAShakeUtil.registerForShakeEvent(delegate: self)
    }
    
    func deviceDidShaken() {
        
        if !listening {
            
            listening = true
            lblMessage.text = "I am listening to you :)"
        }
        else {
            
            listening = false
            lblMessage.text = "Shake to start listening"
        }
    }

    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
    }


}

