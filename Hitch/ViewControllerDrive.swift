//
//  ViewControllerDrive.swift
//  Hitch
//
//  Created by Samuel Goldstein on 3/8/17.
//  Copyright © 2017 Samuel Goldstein. All rights reserved.
//

import UIKit

class ViewControllerDrive: UIViewController {

    
    @IBOutlet weak var startDrive: UITextField!
    
    @IBOutlet weak var startRangeDrive: UISlider!
    
    @IBOutlet weak var startAct: UISlider!
    @IBOutlet weak var startOutput: UILabel!
    
   @IBAction func startAct(_ sender: Any) {
        startOutput.text = "\(Int(startRangeDrive.value)) Mi"
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
