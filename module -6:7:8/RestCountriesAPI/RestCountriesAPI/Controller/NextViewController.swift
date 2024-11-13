//
//  NextViewController.swift
//  RestCountriesAPI
//
//  Created by MAC1 on 07/10/24.
//

import UIKit
import WebKit

class NextViewController: UIViewController {

    var txtName=""
    var txtUrl=""
    
    @IBOutlet weak var mywebview: WKWebView!
    @IBOutlet weak var lbl_name: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        lbl_name.text=txtName
        
        let url=URL(string: txtUrl)
        let req=URLRequest(url: url!)
        mywebview.load(req)
    }
    

   

}
