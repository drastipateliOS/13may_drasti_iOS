//
//  main.swift
//  p6
//
//  Created by Drashti Patel on 18/06/24.
//

import Foundation

func add()
{
    print("Addition :",a+b)
}
func sub()
{
    print("subtraction :",a-b)
}
func mul()
{
    print("subtraction :",a*b)
}
func div()
{
    print("subtraction :",a/b)
}

var a:Int,b:Int,ch:Int

print("Enter Value of A:")
a=Int(readLine()!)!
print("Enter Value of B:")
b=Int(readLine()!)!

print("1 = Addition")
print("2 = Subtraction")
print("3 = Multiplication")
print("4 = Division")
print("")
print("Choose Any One...:")
ch=Int(readLine()!)!

switch ch
{
    case 1:
    add()
    break
    
    case 2:
    sub()
    break
        
    case 3:
    mul()
    break
        
    case 4:
    div()
    break
        
    default:
    print("select valid choice...")
}
