
//
//  courseInfoViewController.swift
//  JeeAdvice
//
//  Created by ANKIT YADAV on 05/11/19.
//  Copyright © 2019 ANKIT YADAV. All rights reserved.
//

import UIKit
import WebKit

class courseInfoViewController: UIViewController {
    
    override var preferredStatusBarStyle: UIStatusBarStyle { return .lightContent }
    
    var labelTxt = ""
    var videoC = ""
    var txt = ""
    
    @IBOutlet weak var mywebView: WKWebView!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getVideo(videoCode: videoC)
        textView.text = txt
    }
    
    func getVideo(videoCode:String){
        let url = URL(string: "https://www.youtube.com/embed/\(videoCode)")
        mywebView.load(URLRequest(url: url!))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated);
        //self.navigationController?.isNavigationBarHidden = false
        //navigationController?.navigationBar.barTintColor = UIColor.black
        //navigationController?.navigationBar.topItem?.title = labelTxt
        //navigationController?.navigationBar.tintColor = UIColor.white
        //self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    }
    
}
