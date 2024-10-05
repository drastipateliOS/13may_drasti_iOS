//
//  ViewController.swift
//  APP9
//
//  Created by Drashti Patel on 18/07/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var txtdate: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func datepicker(_ sender: UIDatePicker) {
        let date=sender.date
        let dataformt=DateFormatter()
        dataformt.dateStyle = .long
        txtdate.text=dataformt.string(from: date)
    }
    
}

