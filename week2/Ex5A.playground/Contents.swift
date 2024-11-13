import UIKit

let myDOB: Int = 2003
var year = Calendar.current.component(.year, from: Date())
var age: Int = year - myDOB

print("I am \(age) years old.")
