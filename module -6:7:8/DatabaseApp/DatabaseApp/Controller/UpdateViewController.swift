//
//  UpdateViewController.swift
//  DatabaseApp
//
//  Created by MAC1 on 30/08/24.
//

import UIKit

class UpdateViewController: UIViewController {

    @IBOutlet weak var txt_id: UITextField!
    @IBOutlet weak var txt_name: UITextField!
    @IBOutlet weak var txt_sub: UITextField!
    @IBOutlet weak var txt_city: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


    @IBAction func btn_update(_ sender: Any)
    {
        updateData()
    }
    
    func updateData()
    {
        let update_query="update studinfo set name='\(txt_name.text!)',sub='\(txt_sub.text!)',city='\(txt_city.text!)' where id=\(txt_id.text!)"
        print(update_query)
        
        let dml=DBModel()
        let result=dml.dmlservice(query: update_query)
        
        if result==true
        {
            let alert=UIAlertController(title: "Success", message: "Record Updated!", preferredStyle: .alert)
            let btn1=UIAlertAction(title: "OK", style: .default, handler:{ACTION in
                
                self.txt_id.text=""
                self.txt_name.text=""
                self.txt_sub.text=""
                self.txt_city.text=""
            })
            alert.addAction(btn1)
            present(alert, animated: true, completion: nil)
        }
        else
        {
            let alert=UIAlertController(title: "Error", message: "Something went wrong...Try again!", preferredStyle: .alert)
            let btn1=UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(btn1)
            present(alert, animated: true, completion: nil)
        }
        
    }
}
