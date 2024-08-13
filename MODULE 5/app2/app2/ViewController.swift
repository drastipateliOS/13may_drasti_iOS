//
//  ViewController.swift
//  app2
//
//  Created by Drashti Patel on 30/07/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mytable: UITableView!
    var sub=[""]
    var stud=[""]
    override func viewDidLoad()
    {
        super.viewDidLoad()
        mytable.tableFooterView=UIView()
        
        sub=["iOS","PHP","Android","JAVA","Fluteer"]
        stud=["Ravi","Rajesh","Mit","Soham"]
    }
}
    extension ViewController:UITableViewDataSource,UITableViewDelegate
{
        func numberOfSections(in tableView: UITableView) -> Int 
        {
            return 2
        }
        func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? 
        {
            if section==0
            {
                return "Section 1"
            }
            else
            {
                return "Section 2"
            }
        }
        func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? 
        {
            if section==0
            {
                return "             "
            }
            return "             "

        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
        {
            if section == 0
            {
                return sub.count
            }
            return stud.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell 
        {
            if indexPath.section==0
            {
                let cell=UITableViewCell(style:.default, reuseIdentifier: nil)
                cell.textLabel?.text=sub[indexPath.row]
                return cell
            }
            else
            {
                let ct=UITableViewCell(style: .default, reuseIdentifier: nil)
                ct.textLabel?.text=stud[indexPath.row]
                return ct
            }
        }
        
        
    }


