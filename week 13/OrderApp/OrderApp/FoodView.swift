//
//  DrinkView.swift
//  OrderApp
//
//  Created by labuser on 05/02/2025.
//

import SwiftUI
import SwiftData

struct FoodView: View {
    @Query(filter: #Predicate<MenuItem>{item in item.type == "Food"}
           , sort: \MenuItem.name) var FoodItems: [MenuItem]
    @Environment(\.modelContext) private var modelContext
    @State private var searchText = ""
    private var filteredFoodItems: [MenuItem] {
        if searchText.isEmpty {
            return FoodItems
        } else {
            return FoodItems.filter { $0.name.contains(searchText) }
        }
    }
    
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(filteredFoodItems){item in MenuItemView(item: item)
                }
            }
            .searchable(text: $searchText)
            .onAppear{
                if FoodItems.isEmpty{
                    preloadMenuItems()
                }
            }
        }
        
    }
    private func preloadMenuItems(){
        let sampleDrinks: [(name:String, photo: String, price:Double)] = [
            ("1pc Chicken", "1pc chicken", 3.0),
            ("2pc Chicken", "2pc chicken", 6.0),
            ("3pc Chicken", "3pc chicken", 9.0),
            ("3pc Chicken + Tender", "3pc_chicken_tender", 12.0),
            ("5pc Chicken", "5pc chicken", 15.0),
            ("9pc Chicken", "9pc chicken", 27.0),
            ("12pc Chicken", "12pc chicken", 36.0),
            ("Aloha Burger", "aloha burger", 17.0),
            ("Cheesy Fries", "cheesy fries", 12.0),
            ("Cheesy Yumburger", "cheesy yumburger", 10.0),
            ("Chicken Tender + Fries", "chicken tender with fries", 6.0),
            ("Chicken + Spaghetti", "chicken wiht spaghetti", 8.0),
            ("Coleslaw", "coleslaw", 4.0),
            ("1pc Chicken + Burger Steak + Rice", "1pc_chicken_burger_steak_rice", 12.0),
            ("Double Cheesy Yumburger", "double cheesy yumburger", 14.0),
            ("Joy Chicken Sausage", "joy chicken sausage", 7.0),
            ("Mashes Potato", "mashed potato", 3.0),
            ("Rice", "rice", 1.0),
            ("Spaghetti", "spaghetti", 9.0),
            ("Yumburger", "yumburger", 6.0),
        ]
        
        for drink in sampleDrinks{
            let newItem = MenuItem(name: drink.name, photo: drink.photo, type:"Food", price: drink.price)
            modelContext.insert(newItem)
        }
        try? modelContext.save()
    }
}


#Preview {
    FoodView()
        .modelContainer(for: MenuItem.self, inMemory: true)
}
