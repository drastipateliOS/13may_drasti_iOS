//
//  ViewController.swift
//  app3
//
//  Created by Drashti Patel on 04/07/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var txt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btn_display(_ sender: Any) 
    {
        lbl.text=txt.text
    }
}

