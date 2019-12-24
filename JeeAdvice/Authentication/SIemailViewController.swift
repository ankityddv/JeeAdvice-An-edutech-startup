//
//  SIemailViewController.swift
//  JeeAdvice
//
//  Created by ANKIT YADAV on 04/11/19.
//  Copyright © 2019 ANKIT YADAV. All rights reserved.
//

import UIKit
import SVProgressHUD

class SIemailViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var nextBttn: UIButton!
    @IBAction func nextBttn(_ sender: Any) {
        self.emailFF = emailField.text!
           performSegue(withIdentifier: "SIgnInViewController", sender: self)
    }
    
    var emailFF:String = ""

   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextBttn.layer.cornerRadius = 17.5
        //SVProgressHUD.dismiss()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated);
        self.navigationController?.isNavigationBarHidden = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! SIgnInViewController
        vc.email = self.emailFF
    }

}
