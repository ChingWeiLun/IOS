//
//  MenuItem.swift
//  OrderApp
//
//  Created by labuser on 05/02/2025.
//

import SwiftData
import Foundation

@Model
class MenuItem: Identifiable{
    var id: UUID
    var name: String
    var photo: String
    var type: String //Food or Drink
    var price: Double
    var isAddedToOrder: Bool = false
    
    init(id: UUID = UUID(), name: String, photo: String, type: String, price: Double, isAddedToOrder: Bool = false) {
        self.id = id
        self.name = name
        self.photo = photo
        self.type = type
        self.price = price
        self.isAddedToOrder = isAddedToOrder
    }
}
