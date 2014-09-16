//
//  ViewController.swift
//  Postcard
//
//  Created by Tim Wilson on 9/13/14.
//  Copyright (c) 2014 Tim Wilson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
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
        
        //Code will evalutate when we press the button
        nameLabel.hidden = false
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        nameLabel.text = "Dear " + enterNameTextField.text
        messageLabel.textColor = UIColor.redColor()
        enterMessageTextField.text = ""
        enterNameTextField.text  = ""
        
        //Resign First Responder is a function that closes keyboard
        enterMessageTextField.resignFirstResponder()
        enterNameTextField.resignFirstResponder()
        
        //Change the Title of the button with the set title function. Set Title function has two arguments a place to set the string and a state argument.
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

