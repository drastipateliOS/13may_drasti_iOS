//
//  InsertViewController.swift
//  DatabaseApp
//
//  Created by MAC1 on 30/08/24.
//

import UIKit

class InsertViewController: UIViewController {

    @IBOutlet weak var txt_name: UITextField!
    @IBOutlet weak var txt_sub: UITextField!
    @IBOutlet weak var txt_city: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btn_save(_ sender: Any)
    {
        insertData()
    }
    
    func insertData()
    {
        if txt_name.text=="" && txt_sub.text=="" && txt_city.text==""
        {
            
            /*self.txt_name.layer.borderColor=UIColor.red.cgColor
            self.txt_name.layer.borderWidth=3.0
            
            self.txt_sub.layer.borderColor=UIColor.red.cgColor
            self.txt_sub.layer.borderWidth=3.0
            
            self.txt_city.layer.borderColor=UIColor.red.cgColor
            self.txt_city.layer.borderWidth=3.0
            let alert=UIAlertController(title: "Error", message: "Please fill the details!", preferredStyle: .alert)
            let btn1=UIAlertAction(title: "OK", style: .default, handler: {ACTION in
            })
            alert.addAction(btn1)
            present(alert, animated: true, completion: nil)*/
            
            let animation = CABasicAnimation(keyPath: "position")
            animation.duration = 0.08
            animation.repeatCount = 5
            animation.autoreverses = true
            animation.fromValue = NSValue(cgPoint: CGPoint(x: txt_name.center.x - 10, y: txt_name.center.y))
            animation.toValue = NSValue(cgPoint: CGPoint(x: txt_name.center.x + 10, y: txt_name.center.y))
            txt_name.layer.add(animation, forKey: "position")
        }
        else
        {
            let insert_query="insert into studinfo(name,sub,city)values('\(txt_name.text!)','\(txt_sub.text!)','\(txt_city.text!)')"
            print(insert_query)
            
            let dml=DBModel()
            let result=dml.dmlservice(query: insert_query)
            
            if result==true
            {
                let alert=UIAlertController(title: "Success", message: "Record Inserted!", preferredStyle: .alert)
                let btn1=UIAlertAction(title: "OK", style: .default, handler:{ACTION in
                    
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
    

}
