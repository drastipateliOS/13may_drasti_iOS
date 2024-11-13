//
//  ViewController.swift
//  FullCoreDataApp
//
//  Created by MAC1 on 01/10/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txt_name: UITextField!
    @IBOutlet weak var txt_sub: UITextField!
    @IBOutlet weak var txt_city: UITextField!
    
    let conext=(UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let path=NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        print(path)
    }

    @IBAction func btn_save(_ sender: Any)
    {
        let stdata=["name":txt_name.text!,
                    "sub":txt_sub.text!,
                    "city":txt_city.text!]
        
        let db=DBModel()
        db.savedata(data: stdata)
        
        do
        {
            try! conext.save()
            print("Record Inserted!")
            txt_name.text=""
            txt_sub.text=""
            txt_city.text=""
        }
        catch
        {
            print(error.localizedDescription)
        }
    }
    
    @IBAction func btn_showdata(_ sender: Any)
    {
        let showdataVC=storyboard?.instantiateViewController(identifier: "showdataVC") as! ShowdataViewController
        navigationController?.pushViewController(showdataVC, animated: true)
    }
}

