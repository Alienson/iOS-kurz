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
    
    private var email: String = ""
    private var password: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnSignup(sender: UIButton) {
        if validateEmail(txtEmailField.text!) {
            self.email = txtEmailField.text!
            self.password = txtPassword.text!
            print("Your data: \(email) : \(password)")
        }
        else{
            let alertController = UIAlertController(title: "Email validator", message: "your email address is incorrect!", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction!) in
                print("you have pressed OK button");
            }
            alertController.addAction(OKAction)
            
            self.presentViewController(alertController, animated: true, completion:nil)
        }
    }
    
    @IBAction func btnLogin(sender: AnyObject) {
        
    }
    
    @IBAction func tgrDismiss(sender: UITapGestureRecognizer) {
        txtEmailField.resignFirstResponder()
        txtPassword.resignFirstResponder()
        view.endEditing(true)
    }
    
    @IBAction func unwind(sender: UIStoryboardSegue){
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let loginVC: LoginViewController = segue.destinationViewController as! LoginViewController
        loginVC.receivedString = txtEmailField.text!
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        return true
    }
    
    func validateEmail(candidate: String) -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}"
        return NSPredicate(format: "SELF MATCHES %@", emailRegex).evaluateWithObject(candidate)
    }

}
