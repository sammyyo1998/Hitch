//
//  ViewControllerAccount.swift
//  Hitch
//
//  Created by Samuel Goldstein on 3/9/17.
//  Copyright © 2017 Samuel Goldstein. All rights reserved.
//

import UIKit

//account structure
struct Account {
    var firstName:String?
    var lastName:String?
    var theEmail:String?
    var pass:String?
}
//initalize list of accounts (implement in firebase later)
var allAccounts = [Account]()

class ViewControllerAccount: UIViewController {

    @IBOutlet weak var first: UITextField!
    @IBOutlet weak var last: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var confirm: UITextField!
    
    @IBOutlet weak var createButton: UIButton!
    
    @IBAction func createAccount(_ sender: Any) {
        if (password.text != confirm.text){
            createButton.setTitle("Try Again: Password does not match", for: .normal)
        }
        else if (first.text == "" || last.text == "" || email.text == "" || password.text == ""){
            createButton.setTitle("Try Again", for: .normal)
        }
        else {
            allAccounts.append(Account(firstName:first.text, lastName:last.text, theEmail:email.text, pass:password.text))
            performSegue(withIdentifier: "backHome", sender: self)
        }
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
