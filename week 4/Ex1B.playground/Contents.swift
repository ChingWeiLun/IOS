import UIKit

/*var number = 2534
var strnumber = String(number)
var result: Int = 0

for char in strnumber {
    if let int = Int(String(char)) {
        result += int
    }
}
print(result)*/

func sumOfDigits(number:Int)->Int{
    var strnumber = String(number)
    var result: Int = 0

    for char in strnumber {
        if let int = Int(String(char)) {
            result += int
        }
    }
    return result
}

print(sumOfDigits(number: 2534))
