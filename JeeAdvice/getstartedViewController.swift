//
//  getstartedViewController.swift
//  JeeAdvice
//
//  Created by ANKIT YADAV on 04/11/19.
//  Copyright © 2019 ANKIT YADAV. All rights reserved.
//

import UIKit

class getstartedViewController: UIViewController {
    
    override var preferredStatusBarStyle: UIStatusBarStyle { return .lightContent }
    
    @IBOutlet weak var signInBttn: UIButton!
    
    @IBOutlet weak var skip: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        signInBttn.layer.cornerRadius = 10
        skip.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }
    
    // Commit
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
