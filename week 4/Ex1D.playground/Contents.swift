import UIKit

/*for number in 1...20{
    if number % 3 == 0{
        print("\(number) = Fizz")
    }
    if number % 5 == 0{
        print("\(number) = Buzz")
    }
    if number % 3 == 0 && number % 5 == 0{
        print("\(number) = FizzBuzz")
    }
}*/

func fizzBuzz(start:Int,end:Int)->String{
    var sentences:String = ""
    for number in start...end{
        if number % 3 == 0 && number % 5 == 0{
            sentences = sentences + "\(number) = FizzBuzz\n"
        }
        else if number % 5 == 0{
            sentences = sentences + "\(number) = Buzz\n"
        }
        else if number % 3 == 0{
            sentences = sentences + "\(number) = Fizz\n"
        }
    }
    return sentences
}
print(fizzBuzz(start:1,end:20))
