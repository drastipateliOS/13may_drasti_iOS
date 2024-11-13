//
//  ViewController.swift
//  API_MVC
//
//  Created by MAC1 on 05/10/24.
//

import UIKit

class ViewController: UIViewController {

    var apiData=[ProductAPI]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loadAPI()
    }

    func loadAPI()
    {
        let url=URL(string: "https://fakestoreapi.com/products")
            
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            
            self.apiData=try! JSONDecoder().decode([ProductAPI].self, from: data!)
            print(self.apiData)
            
            
        }.resume()
       
    }

}

