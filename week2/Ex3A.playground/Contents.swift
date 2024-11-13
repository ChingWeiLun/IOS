import UIKit

let petName = "Happy"
let age = 23
let weight = 23.54
let isMale = true
var typePetName = type(of: petName)
var typeAge = type(of: age)
var typeWeight = type(of: weight)
var typeIsMale = type(of: isMale)
print(typePetName)
print(typeAge)
print(typeWeight)
print(typeIsMale)

