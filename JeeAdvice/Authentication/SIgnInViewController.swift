//
//  SIgnInViewController.swift
//  JeeAdvice
//
//  Created by ANKIT YADAV on 04/11/19.
//  Copyright © 2019 ANKIT YADAV. All rights reserved.
//

import UIKit
import FirebaseAuth
import SVProgressHUD

class SIgnInViewController: UIViewController {
    
    var email = ""
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var signInBttn: UIButton!
    @IBOutlet weak var passwordField: UITextField!
    @IBAction func signInBttn(_ sender: Any) {
        signInUser()
    }
    
    func signInUser() {
           let emailF = email as String
           let password = passwordField.text
           
               if password!.count < 6 && password!.count >= 1 {
                   // create the alert
                   let alert = UIAlertController(title: "Invalid!!!", message: "Password must be greater than 6 characters!", preferredStyle: UIAlertController.Style.alert)
                   
                   // add an action (button)
                   alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                   
                   // show the alert
                   self.present(alert, animated: true, completion: nil)
               }
               else if emailF.count == 0 && password!.count == 0 {
                   // create the alert
                   let alert = UIAlertController(title: "Invalid!!!", message: "Please enter the email and password!", preferredStyle: UIAlertController.Style.alert)
                   
                   // add an action (button)
                   alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                   
                   // show the alert
                   self.present(alert, animated: true, completion: nil)
               }
           else
           {
            Auth.auth().signIn(withEmail: emailF, password: password!){user,error in
                   self.performSegue(withIdentifier: "loggedIn", sender: self)
               }
               progressHUD()
           }
           
       }
       
       func progressHUD () {
           SVProgressHUD.show(withStatus: "Signing In!")
           SVProgressHUD.setDefaultStyle(.dark)
           SVProgressHUD.setDefaultMaskType(.black)
           SVProgressHUD.setForegroundColor(UIColor.black)           //Ring Color
           //SVProgressHUD.setBackgroundColor(UIColor(red:0.98, green:0.84, blue:0.00, alpha:1.0))        //HUD Color
           //SVProgressHUD.setBackgroundLayerColor(UIColor.green)    //Background Color
       }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailLabel.text = email
        signInBttn.layer.cornerRadius = 17.5
        // Do any additional setup after loading the view.
    }
}
