//
//  ViewController.swift
//  APP10
//
//  Created by Drashti Patel on 18/07/24.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource,UIPickerViewDelegate
{
    var course=[""]
    override func viewDidLoad()
    {
        super.viewDidLoad()
       
        course=["Android","PHP","iOS","Java","HTML","Wordpress","Flutter"]
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int 
    {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int 
    {
        return course.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return course[row]
    }

}


