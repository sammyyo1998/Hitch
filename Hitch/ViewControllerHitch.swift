//
//  ViewControllerHitch.swift
//  Hitch
//
//  Created by Samuel Goldstein on 3/6/17.
//  Copyright © 2017 Samuel Goldstein. All rights reserved.
//

import UIKit

class ViewControllerHitch: UIViewController {
    //start
    @IBOutlet weak var startLoc: UITextField!
    @IBOutlet weak var startRange: UISlider!
    @IBOutlet weak var startRangeOutput: UILabel!
    //End
    @IBOutlet weak var endLoc: UITextField!
    @IBOutlet weak var endRange: UISlider!
    @IBOutlet weak var endRangeOutput: UILabel!
    
    @IBAction func startAct(_ sender: Any) {
        startRangeOutput.text = "\(Int(startRange.value)) Mi"
    }
    
    
    @IBAction func end(_ sender: Any) {
        endRangeOutput.text = "\(Int(endRange.value)) Mi"
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
