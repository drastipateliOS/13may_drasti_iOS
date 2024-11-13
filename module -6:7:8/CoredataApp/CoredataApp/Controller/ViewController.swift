//
//  ViewController.swift
//  CoredataApp
//
//  Created by MAC1 on 13/09/24.
//

import UIKit

class ViewController: UIViewController {

    let context=(UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    @IBOutlet weak var txt_mob: UITextField!
    @IBOutlet weak var txt_city: UITextField!
    @IBOutlet weak var txt_sub: UITextField!
    @IBOutlet weak var txt_name: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn_save(_ sender: Any)
    {
        let data=["name":txt_name.text!,
                  "sub":txt_sub.text!,
                  "city":txt_city.text!,
                  "mobile":Int(txt_mob.text!)!] as [String : Any]
        
        let db=DBModel()
        db.saveData(data: data)
        do
        {
            try! context.save()
            print("Record Inserted!")
        }
        catch
        {
            print(error.localizedDescription)
        }
    }
    
}

