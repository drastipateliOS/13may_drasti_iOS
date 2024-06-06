//
//  main.swift
//  p8
//
//  Created by Drashti Patel on 02/06/24.
//

import Foundation

var a:Int, b:Int, ch:Int

print("Enter Value of A:")
a=Int(readLine()!)!

print("Enter Value of B: ")
b=Int(readLine()!)!

print("1. Addition ")
print("2. Subtraction")
print("3. Multiplication")
print("4. Division")

print(" Please Enter One Choice...: ")
ch=Int(readLine()!)!

switch ch
{
    case 1:
        print("Addition : ",a+b)
    
    case 2:
        print("Addition : ",a-b)
    
    case 3:
        print("Addition : ",a*b)
    
    case 4:
        print("Addition : ",a/b)
      
    
    default:
        print("ERROR...ENTER VALID CHOICE...")
}

