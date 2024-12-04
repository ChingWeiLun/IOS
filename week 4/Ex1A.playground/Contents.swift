import UIKit

func printOddNumber(num1:Int, num2:Int){
    for number in stride(from: num1, to: num2, by: 2){
        print(number)
    }
}

printOddNumber(num1: 1, num2: 50)
