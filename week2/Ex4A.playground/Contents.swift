import UIKit

var number: Int = 45
var orgDataType = type(of: number)
print("\(number) is a \(orgDataType).")
var text = String(number)
print("My lucky number is \(text).")
var dataType = type(of: text)
print("Now is \(dataType)")
