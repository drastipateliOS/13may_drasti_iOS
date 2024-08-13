//
//  ViewController.swift
//  APP 1
//
//  Created by Drashti Patel on 16/07/24.
//

import UIKit

class ViewController: UIViewController {
     
    var city=[""]
    @IBOutlet weak var mytable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mytable.tableFooterView=UIView()
        
        city=["Ahmedabad","Rajkot","Baroda","Surat","Pune"]
    }
}

extension ViewController:UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int 
    {
        return city.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell 
    {
        let ct=UITableViewCell(style: .default, reuseIdentifier: nil)
        ct.textLabel?.text=city[indexPath.row]
        return ct
    }
    
    
}
