//
//  ViewController.swift
//  APP8
//
//  Created by Drashti Patel on 08/07/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl_pass: UILabel!
    @IBOutlet weak var lbl_unm: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btn_login(_ sender: Any) {
        let alert = UIAlertController(title: "LOG IN" , message: "ENTER USERNAME AND PASSWORD", preferredStyle: .alert)
        
            alert.addTextField
            { textusername in
                textusername.placeholder="USERNAME"
                textusername.textAlignment = .center
            }
            alert.addTextField
            { textpassword in
                textpassword.placeholder="PASSWORD"
                textpassword.textAlignment = .center
                textpassword.isSecureTextEntry=true
            }
            
            let btn1=UIAlertAction(title: "LOGIN", style: .default, handler: {ACTION in
                
                self.lbl_unm.text=alert.textFields![0].text!
                self.lbl_pass.text=alert.textFields![1].text!
            })
            let btn2=UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            alert.addAction(btn1)
            alert.addAction(btn2)
            
            present(alert, animated: true, completion: nil)
        }
}

