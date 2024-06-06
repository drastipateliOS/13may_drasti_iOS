//
//  main.swift
//  p16
//
//  Created by Drashti Patel on 06/06/24.
//

import Foundation

print("Hello, World!")

var a:Array<String>
a=["php","java","swift","android"]
print(a)

a.insert("css", at: 2)
print(a)

a.insert("flutter", at: 3)
print(a)

a.remove(at: 1)
print(a)
