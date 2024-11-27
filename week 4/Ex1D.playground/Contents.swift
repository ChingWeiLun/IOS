import UIKit

for number in 1...20{
    if number % 3 == 0{
        print("\(number) = Fizz")
    }
    if number % 5 == 0{
        print("\(number) = Buzz")
    }
    if number % 3 == 0 && number % 5 == 0{
        print("\(number) = FizzBuzz")
    }
}
