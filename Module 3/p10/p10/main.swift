//
//  main.swift
//  p10
//
//  Created by Drashti Patel on 20/06/24.
//

import Foundation


class sum
{
    func getsum(a:Int,b:Int)
    {
        print("Sum:\(a+b)")
    }
}

@objc protocol dataprotocol
{
    func getsum(a:Int,b:Int)
}

var s=sum()
s.getsum(a: 45, b: 35)
