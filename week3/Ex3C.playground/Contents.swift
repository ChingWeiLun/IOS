import UIKit

let shippingAddress:String? = "kajang"
let result = shippingAddress != nil ? "Shipping to: \(shippingAddress!)" : "No shipping address"
print(result)
