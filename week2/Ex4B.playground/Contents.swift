import UIKit

var number: String = "36.66"
var orgDataType = type(of: number)
print("\(number) DataType is \(orgDataType)")
if let distance = Double(number) {
    var dataType = type(of: distance)
    print("Distance is \(distance) meters")
    print("Now dataType is \(dataType)")
}
else{
    print("Cant convert to double")
}
