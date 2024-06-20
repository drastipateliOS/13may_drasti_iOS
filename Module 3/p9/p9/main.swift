//
//  main.swift
//  p9
//
//  Created by Drashti Patel on 20/06/24.
//

import Foundation

class student1
{
    func getdata(id:Int,nm:String)
    {
        print("First ID:\(id)")
        print("First Name:\(nm)")
    }
}

class student2: student1
{
    override func getdata(id: Int, nm: String) 
    {
        print("Second ID:\(id)")
        print("Second Name:\(nm)")
    }
}

class student3: student1
{
    override func getdata(id: Int, nm: String) 
    {
        print("Third ID:\(id)")
        print("Third Name:\(nm)")
    }
}


var st1=student1()

var st2=student2()

var st3=student3()

st1.getdata(id: 1, nm: "Abc")
st2.getdata(id: 2, nm: "Def")
st3.getdata(id: 3, nm: "Ghi")

