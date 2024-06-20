//
//  main.swift
//  p11
//
//  Created by Drashti Patel on 20/06/24.
//

import Foundation

class info
{
    func getdata(id: Int, nm: String)
    {
        print("ID:\(id)")
        print("Name:\(nm)")
    }
}

@objc protocol dataprotocol
{
    @objc optional func gettada(id:Int,nm:String)
}

var inf=info()
inf.getdata(id: 1, nm: "Drashti")
