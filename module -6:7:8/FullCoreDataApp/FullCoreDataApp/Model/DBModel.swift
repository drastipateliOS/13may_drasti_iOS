//
//  DBModel.swift
//  FullCoreDataApp
//
//  Created by MAC1 on 01/10/24.
//

import UIKit
import CoreData

class DBModel: NSObject {

    let conext=(UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    func savedata(data:[String:Any])
    {
        let insertObj=NSEntityDescription.insertNewObject(forEntityName: "Studinfo", into: conext) as! Studinfo
        /*insertObj.setValue(data["name"], forKey: "name")
        insertObj.setValue(data["sub"], forKey: "sub")
        insertObj.setValue(data["city"], forKey: "city")*/
        insertObj.name=data["name"] as? String
        insertObj.sub=data["sub"] as? String
        insertObj.city=data["city"] as? String
    }
    
    func fetchalldata()->[Studinfo]
    {
        var stdata=[Studinfo]()
        
        let fetchReq=NSFetchRequest<NSFetchRequestResult>.init(entityName: "Studinfo")
        
        do
        {
            stdata = try! conext.fetch(fetchReq) as! [Studinfo]
        }
        catch
        {
            print(error.localizedDescription)
        }
        return stdata
    }
    
    func deletedata(id:Int) -> [Studinfo]
    {
        var stdata=fetchalldata()
        conext.delete(stdata[id])
        stdata.remove(at: id)
        try? conext.save()
        return stdata
    }
    
}
