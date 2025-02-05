//
//  DrinkView.swift
//  OrderApp
//
//  Created by labuser on 05/02/2025.
//

import SwiftUI
import SwiftData

struct DrinkView: View {
    @Query(filter: #Predicate<MenuItem>{item in item.type == "Drink"}
           , sort: \MenuItem.name) var drinkItems: [MenuItem]
    @Environment(\.modelContext) private var modelContext
    @State private var searchText = ""
    private var filteredDrinkItems: [MenuItem] {
        if searchText.isEmpty {
            return drinkItems
        } else {
            return drinkItems.filter { $0.name.contains(searchText) }
        }
    }
    var body: some View {
        NavigationStack{
            List{
                ForEach(filteredDrinkItems){item in MenuItemView(item: item)
                }
            }.onAppear{
                if drinkItems.isEmpty{
                    preloadMenuItems()
                }
            }
        }.searchable(text: $searchText)
        
    }
    private func preloadMenuItems(){
        let sampleDrinks: [(name:String, photo:String, price:Double)] = [
            ("Cappucino", "cappucino", 15.0),
            ("Coca Cola", "cocacola", 6.0),
            ("Hot Chocolate", "hot chocolate", 9.0),
            ("Iced Americano + Tender", "iced americano", 10.0),
            ("Iced Chocolate", "iced chocolate", 15.0),
            ("Iced Latter", "iced latte", 12.0),
            ("Lemon Tea", "lemon tea", 5.0),
            ("Milo", "milo", 14.0),
            ("Mineral Water", "mineral water", 1.0),
            ("Mocha", "mocha", 10.0),
        ]
        
        for drink in sampleDrinks{
            let newItem = MenuItem(name: drink.name, photo: drink.photo, type:"Drink", price: drink.price)
            modelContext.insert(newItem)
        }
        try? modelContext.save()
    }
}


#Preview {
    DrinkView()
        .modelContainer(for: MenuItem.self, inMemory: true)
}
