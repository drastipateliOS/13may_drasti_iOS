//
//  DeleteViewController.swift
//  DatabaseApp
//
//  Created by MAC1 on 30/08/24.
//

import UIKit

class DeleteViewController: UIViewController {

    @IBOutlet weak var txt_id: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btn_delete(_ sender: Any)
    {
        deleteData()
    }
    
    func deleteData()
    {
        let delete_query="delete from studinfo where id=\(txt_id.text!)"
        print(delete_query)
        
        let dml=DBModel()
        let result=dml.dmlservice(query: delete_query)
        
        if result==true
        {
            let alert=UIAlertController(title: "Success", message: "Record Deleted!", preferredStyle: .alert)
            let btn1=UIAlertAction(title: "OK", style: .default, handler:{ACTION in
                
                self.txt_id.text=""
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
