//
//  ViewController.swift
//  APP11
//
//  Created by Drashti Patel on 20/07/24.
//

import UIKit

class ViewController: UIViewController
{
    var color=[""]
    override func viewDidLoad()
    {
        super.viewDidLoad()
        color=["Red","Blue","Green","Orange","Black","White","Pink","Purple"]
        
    }
    

}

extension ViewController:UIPickerViewDelegate,UIPickerViewDataSource
{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return color.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? 
    {
        return color[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        let selectclr = color[row]
        switch selectclr
        {
            case "Red": view.backgroundColor = .red
            
            case "Blue": view.backgroundColor = .blue

            case "Green": view.backgroundColor = .green

            case "Orange": view.backgroundColor = .orange

            case "Black": view.backgroundColor = .black

            case "White": view.backgroundColor = .white

            case "Pink": view.backgroundColor = .systemPink

            case "Purple": view.backgroundColor = .purple

            default: view.backgroundColor = .gray
        }
    }
}
