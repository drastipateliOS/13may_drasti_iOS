//
//  ViewController.swift
//  ProductAPI
//
//  Created by MAC1 on 05/10/24.
//

import UIKit

class ViewController: UIViewController {

    var apiData=Array<Any>()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loadAPI()
    }

    
    func loadAPI()
    {
        let url=URL(string: "https://fakestoreapi.com/products")
        
        do
        {
            let dt=try! Data(contentsOf: url!)
            apiData=try JSONSerialization.jsonObject(with: dt, options: []) as! [Any]
            print(apiData)
        }
        catch
        {
            print(error.localizedDescription)
        }
    }

}
extension ViewController:UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return apiData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let dict=apiData[indexPath.row] as! Dictionary<String,Any>
        var cell=TableViewCell()
        cell=tableView.dequeueReusableCell(withIdentifier: "mycell") as! TableViewCell
        cell.lbl_title.text=dict["title"] as? String
        cell.lbl_des.text=dict["description"] as? String
        cell.lbl_price.text=String((dict["price"] as? Double)!)
        return cell
    }
    
    
}
