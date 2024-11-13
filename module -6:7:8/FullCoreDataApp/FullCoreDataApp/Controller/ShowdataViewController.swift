//
//  ShowdataViewController.swift
//  FullCoreDataApp
//
//  Created by MAC1 on 01/10/24.
//

import UIKit

class ShowdataViewController: UIViewController {

    var stdata=[Studinfo]()
    override func viewDidLoad() {
        super.viewDidLoad()

        getalldata()
    }
    
    func getalldata()
    {
        let db=DBModel()
        stdata=db.fetchalldata()
        print(stdata)
    }

   
}
extension ShowdataViewController:UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stdata.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        cell.textLabel?.text=stdata[indexPath.row].name
        cell.detailTextLabel?.text=stdata[indexPath.row].city
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath)
    {
        if editingStyle == .delete
        {
            let db=DBModel()
            stdata=db.deletedata(id: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
}
