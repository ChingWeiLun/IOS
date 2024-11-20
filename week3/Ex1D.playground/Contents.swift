import UIKit

let age = 2

if age < 5 {
    print("Free Entry")
}
else if age >= 5 && age <= 12{
    print("Ticket price is 10$")
}
else if age >= 13 && age <= 64{
    print("Ticket price is 15$")
}
else{
    print("Ticket price is 8$")
}
