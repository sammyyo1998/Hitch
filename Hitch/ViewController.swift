//
//  ViewController.swift
//  Hitch
//
//  Created by Samuel Goldstein on 3/5/17.
//  Copyright © 2017 Samuel Goldstein. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //variables for account input
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var signLabel: UIButton!
    
    @IBAction func signIn(_ sender: Any) {
        //when Sign In pressed
        if emailField.text != "" && passwordField.text != "" {
            performSegue(withIdentifier: "toSignIn", sender: self)
            
        }
        else{
            func shouldPerformSegueWithIdentifier(identifier: String,sender: AnyObject?) -> Bool {
                
                return true
            }
            signLabel.setTitle("Try Again", for: .normal)
          
        }
        
    }
    @IBAction func newAccount(_ sender: Any) {
        //when New Account pressed
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

