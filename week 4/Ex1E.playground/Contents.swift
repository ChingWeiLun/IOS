import UIKit

let number = [3,5,1,4]

for i in number {
    for j in 1...i {
        print("*", terminator: "")
    }
    print(terminator: "\n")
}
