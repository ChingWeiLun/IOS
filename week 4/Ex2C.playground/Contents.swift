import UIKit

func multiplyNumber(n:Int){
    if n > 0{
        for i in 1...10{
            print("\(n) x \(i) = \(n * i)")
        }
    }
    else{
        print("Please enter a positive number.")
    }
}

multiplyNumber(n: 4)
