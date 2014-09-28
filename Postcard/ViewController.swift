//
//  ViewController.swift
//  Postcard
//
//  Created by Clark Huang on 9/21/14.
//  Copyright (c) 2014 Clark Huang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Changes for message label
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        // Blank out text and remove keyboard
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        // Set button title
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

