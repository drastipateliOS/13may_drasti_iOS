//
//  ViewController.swift
//  app4
//
//  Created by Drashti Patel on 04/07/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func show(_ sender: Any) 
    {
            lbl.alpha=1
            
    }
    
    @IBAction func hide(_ sender: Any) 
    {
        lbl.alpha=0
    }
}

