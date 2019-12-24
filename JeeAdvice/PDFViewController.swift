//
//  PDFViewController.swift
//  JeeAdvice
//
//  Created by ANKIT YADAV on 05/11/19.
//  Copyright © 2019 ANKIT YADAV. All rights reserved.
//

import UIKit
import WebKit
import PDFKit

class PDFViewController: UIViewController {
    
    override var preferredStatusBarStyle: UIStatusBarStyle { return .lightContent }
    
    let pdfTitile = "Stats"

    @IBOutlet weak var pdfView: PDFView!
    
    @IBAction func openPDFAction(_ sender: Any) {
        if let path = Bundle.main.path(forResource: "Stats", ofType: "pdf"){
            let url = URL(fileURLWithPath: path)
            if let pdfDocument = PDFDocument(url: url) {
                pdfView.autoScales = true
                pdfView.displayMode = .singlePageContinuous
                pdfView.displayDirection = .vertical
                pdfView.document = pdfDocument
            }
        }
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
