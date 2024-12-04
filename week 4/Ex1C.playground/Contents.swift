import UIKit


/*var numberArray = [43,3,5,7,8]
var smallest = numberArray[0]
var largest = numberArray[0]


for number in numberArray {
    if number < smallest {
        smallest = number
    }
    else if number > largest {
        largest = number
    }
}
print("Smallest number is \(smallest)")
print("Largest number is \(largest)")*/

func findMinAndMax(numbers:[Int])->(smallest:Int,largest:Int){
    var smallest = numbers[0]
    var largest = numbers[0]
    
    for number in numbers {
        if number < smallest {
            smallest = number
        }
        else if number > largest {
            largest = number
        }
    }
    return(smallest, largest)
}

let result = findMinAndMax(numbers: [43,3,5,7,8])
print("Smallest number is \(result.smallest)")
print("Largest number is \(result.largest)")
