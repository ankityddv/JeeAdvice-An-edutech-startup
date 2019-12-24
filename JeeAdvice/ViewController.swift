//
//  ViewController.swift
//  JeeAdvice
//
//  Created by ANKIT YADAV on 04/11/19.
//  Copyright © 2019 ANKIT YADAV. All rights reserved.
//

import UIKit
import FirebaseAuth
import SVProgressHUD

class ViewController: UIViewController {

    override var preferredStatusBarStyle: UIStatusBarStyle { return .lightContent }
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var SignUpBttn: UIButton!
    @IBAction func signUpBttn(_ sender: Any) {
        signUpUser()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        SignUpBttn.layer.cornerRadius = 17.5
        // Do any additional setup after loading the view.
    }
    
    func progressHUD () {
        SVProgressHUD.show(withStatus: "Signing Up!")
        SVProgressHUD.setDefaultStyle(.dark)
        SVProgressHUD.setDefaultMaskType(.black)
        SVProgressHUD.setForegroundColor(UIColor.black)           //Ring Color
        //SVProgressHUD.setBackgroundColor(UIColor(red:0.98, green:0.84, blue:0.00, alpha:1.0))        //HUD Color
        //SVProgressHUD.setBackgroundLayerColor(UIColor.green)    //Background Color
    }

    func signUpUser() {
        let email = emailField.text
        let password = passwordField.text
        
        if password!.count < 6 && password!.count >= 1 {
            // create the alert
            let alert = UIAlertController(title: "Invalid!!!", message: "Password must be greater than 6 characters!", preferredStyle: UIAlertController.Style.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
        }
        else if email!.count == 0 && password!.count == 0 {
            // create the alert
            let alert = UIAlertController(title: "Invalid!!!", message: "Please enter the email and password!", preferredStyle: UIAlertController.Style.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
        }
        else{
            
            Auth.auth().createUser(withEmail: email! , password: password!){user,error in
                if user != nil
                {
                    self.performSegue(withIdentifier: "signUp", sender: self)
                    //self.updateData()
                    
                }
                else
                {
                    if let myError = error?.localizedDescription
                    {
                        print(myError)
                    }
                    else
                    {
                        print("ERROR")
                    }
                }
            }
            progressHUD()
        }
        //SVProgressHUD.dismiss()
    }
    

}

