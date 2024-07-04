//
//  ViewController.swift
//  app2
//
//  Created by Drashti Patel on 04/07/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btn_done(_ sender: Any) 
    {
        let btn_done=UIAlertController(title: "Done", message: "Login Success...!", preferredStyle: .alert)
        let btn1=UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        btn_done.addAction(btn1)
        present(btn_done, animated: true, completion: nil)

    }
}

