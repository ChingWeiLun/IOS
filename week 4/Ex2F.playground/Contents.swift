import UIKit

func calculateRectangle(width:Int,height:Int)->(area:Int,perimeter:Int){
    var area:Int = width * height
    var perimeter:Int = 2 * (width + height)
    return (area,perimeter)
}

var result = calculateRectangle(width: 4, height: 7)
print("Area: \(result.area), Perimeter: \(result.perimeter)")
