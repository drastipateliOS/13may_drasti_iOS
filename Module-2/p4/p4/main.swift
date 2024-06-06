//
//  main.swift
//  p4
//
//  Created by Drashti Patel on 02/06/24.
//

import Foundation

var a:Int, b:Int, c:Int

print("Enter Value of A:")
a=Int(readLine()!)!

print("Enter Value of B:")
b=Int(readLine()!)!

print("Enter Value of C:")
c=Int(readLine()!)!

if a>b && a>c
{
    print("A is Maximum...")
}
else if b>a && b>c
{
    print("B is Maximum...")
}
else if c>a && c>b
{
    print("C is Maximum...")
}

