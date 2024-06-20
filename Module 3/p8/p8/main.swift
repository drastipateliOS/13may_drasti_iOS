//
//  main.swift
//  p8
//
//  Created by Drashti Patel on 20/06/24.
//

import Foundation

class employee
{
    
    var  id=0,name=""
     
    func getdata()
    {
        print("ID :")
        id=Int(readLine()!)!
        print("Name:")
        name=readLine()!
    }
}

class manager : employee
{
    func printdata ()
    {
        print("ID :\(id)")
        print("Name :\(name)")
    }
}

var final=manager()

final.getdata()
final.printdata()
