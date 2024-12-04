import UIKit

func checkEvenOdd(start:Int,end:Int)->(even:Int,odd:Int){
    var even = 0
    var odd = 0
    for i in start...end{
        if i % 2 == 0{
            even += 1
        }
        else{
            odd += 1
        }
    }
    return (even,odd)
}

let result = checkEvenOdd(start:1,end:15)
print("Even numbers: \(result.even)")
print("Odd numbers: \(result.odd)")
