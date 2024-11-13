//
//  ViewController.swift
//  RestCountriesAPI
//
//  Created by MAC1 on 07/10/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mytable: UITableView!
    var apiArray=[RestAPI]()
    override func viewDidLoad() {
        super.viewDidLoad()
        loadAPIData()
    }

    func loadAPIData()
    {
        let url=URL(string: "https://restcountries.com/v2/all")
        
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            
            do
            {
                self.apiArray=try! JSONDecoder().decode([RestAPI].self, from: data!)
                print(self.apiArray)
                
                DispatchQueue.main.async {
                    self.mytable.reloadData()
                }
            }
            catch
            {
                print(error.localizedDescription)
            }
            
        }.resume()
    }

}
extension ViewController:UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return apiArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        var cell=TableViewCell()
        cell=tableView.dequeueReusableCell(withIdentifier: "mycell") as! TableViewCell
        cell.lbl_name.text=apiArray[indexPath.row].name
        cell.lbl_capital.text=apiArray[indexPath.row].capital
        cell.lbl_region.text=apiArray[indexPath.row].region
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let nextVC=storyboard?.instantiateViewController(identifier: "nextVC") as! NextViewController
        nextVC.txtName=apiArray[indexPath.row].name!
        nextVC.txtUrl=(apiArray[indexPath.row].flags?.png)!
        navigationController?.pushViewController(nextVC, animated: true)
    }
    
    
}
