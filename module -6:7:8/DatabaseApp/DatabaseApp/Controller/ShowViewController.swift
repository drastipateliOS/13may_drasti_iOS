//
//  ShowViewController.swift
//  DatabaseApp
//
//  Created by MAC1 on 30/08/24.
//

import UIKit

class ShowViewController: UIViewController {

    var dt=Array<Any>()
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchdata()
        // Do any additional setup after loading the view.
    }
    
    func fetchdata()
    {
        let select_query="select * from studinfo"
        let dml=DBModel()
        dt=dml.showalldata(query: select_query)
        print(dt)
    }
}
extension ShowViewController:UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dt.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var dc=dt[indexPath.row] as! Dictionary<String,Any>
        var cell=TableViewCell()
        cell=tableView.dequeueReusableCell(withIdentifier: "mycell") as! TableViewCell
        cell.lbl_name.text=dc["name"] as? String
        cell.lbl_sub.text=dc["sub"] as? String
        cell.lbl_city.text=dc["city"] as? String
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration?
    {
        let btnUpdate = UIContextualAction(style: .normal, title:"Update") {  (contextualAction, view, boolValue) in
            
            print("Button Clicked!")
        }
        btnUpdate.backgroundColor=UIColor.black
        let btnDelete = UIContextualAction(style: .normal, title:"Delete") {  (contextualAction, view, boolValue) in
            
            print("Button Clicked!")
        }
        btnDelete.backgroundColor=UIColor.red
        let swipeActions = UISwipeActionsConfiguration(actions: [btnUpdate,btnDelete])

        return swipeActions
    }
    
}
