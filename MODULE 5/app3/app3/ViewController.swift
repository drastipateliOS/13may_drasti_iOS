//
//  ViewController.swift
//  app3
//
//  Created by Drashti Patel on 08/08/24.
//

import UIKit

class ViewController: UIViewController {
     
    var sub=[""]
    var img=[""]
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        sub = ["iOS","Android","CSS","HTML"]
        img=["1.jpeg","2.jpeg","5.jpeg","4.jpeg"]
        
    }
}
extension ViewController : UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sub.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell 
    {
        let cell=UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text=sub[indexPath.row]
        cell.imageView?.image=UIImage(named: img[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        print(sub[indexPath.row])
        let alert=UIAlertController(title: "Subject", message:sub[indexPath.row], preferredStyle: .alert)
        let btn1=UIAlertAction(title: "Ok", style: .default, handler: nil)
        let btn2=UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alert.addAction(btn1)
        alert.addAction(btn2)
        
        present(alert, animated: true, completion: nil)
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath)
    {
        if editingStyle == .delete
        {
            sub.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
        if editingStyle == .insert
        {
            sub.insert("PHP", at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .left)
        }
    }
    /*func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]?
    {
        let btnAdd=UITableViewRowAction(style: .default, title: "Add") { (btn1, indexpath) in
            
        }
        btnAdd.backgroundColor=UIColor.orange
        let btnUpdate=UITableViewRowAction(style: .normal, title: "Update") { (btn2, indexpath) in
            
        }
        let btnDelete=UITableViewRowAction(style: .destructive, title: "Delete") { (btn3, indexpath) in
           
        }
        return [btnAdd,btnUpdate,btnDelete]
    }*/
}
