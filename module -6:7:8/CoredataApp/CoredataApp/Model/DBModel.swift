//
//  DBModel.swift
//  CoredataApp
//
//  Created by MAC1 on 13/09/24.
//

import Foundation
import CoreData
import UIKit


class DBModel
{
    let context=(UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    func saveData(data:[String:Any])
    {
        let insert=NSEntityDescription.insertNewObject(forEntityName: "Studinfo", into: context)
        insert.setValue(data["name"], forKey: "name")
        insert.setValue(data["sub"], forKey: "sub")
        insert.setValue(data["city"], forKey: "city")
        insert.setValue(data["mobile"], forKey: "mobile")
    }
}
