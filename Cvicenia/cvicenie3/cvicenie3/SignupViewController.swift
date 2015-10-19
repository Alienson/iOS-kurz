//
//  SignupViewController.swift
//  cvicenie3
//
//  Created by Adam Turna on 15.10.2015.
//  Copyright © 2015 Adam Turna. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var txtEmailField: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnSignup(sender: UIButton) {
        let email = txtEmailField.text
        let password = txtPassword.text
        print("\(email) : \(password)")
    }
    
    @IBAction func tgrDismiss(sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    @IBAction func unwind(sender: UIStoryboardSegue){
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        return true
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
