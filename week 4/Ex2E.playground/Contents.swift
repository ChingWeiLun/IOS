import UIKit

func sumInRange(start:Int,end:Int)->Int{
    var sum:Int=0
    for i in start...end{
        sum+=i
    }
    return sum
}

print(sumInRange(start:3,end:6))
