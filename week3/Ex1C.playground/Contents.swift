import UIKit

let leapYear = 2024

if leapYear % 4 == 0 && (leapYear % 100 != 0 || leapYear % 400 == 0){
    print("Leap Year")
}
else
{
    print("Not a Leap Year")
}
