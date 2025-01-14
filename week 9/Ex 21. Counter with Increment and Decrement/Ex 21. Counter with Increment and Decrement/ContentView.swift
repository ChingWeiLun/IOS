//
//  ContentView.swift
//  Ex 21. Counter with Increment and Decrement
//
//  Created by labuser on 14/01/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var counter:Int = 0
    var body: some View {
        VStack {
            Text("Counter App")
                .padding()
                .font(.title)
            Text("\(counter)")
                .font(.title2)
            HStack{
                Button(action: {if(counter != 0) {counter = counter - 1}}) {
                    Text("-")
                        .padding(27)
                        .background(Circle().fill(Color.red))
                        .foregroundColor(.white)
                }
                Button(action: {counter = counter + 1}) {
                    Text("+")
                        .padding(25)
                        .background(Circle().fill(Color.green))
                        .foregroundColor(.white)
                    }
            }.padding()
            Button(action:{counter = 0}){
                Text("Reset")
                    .padding()
                    .font(.title)
                    .foregroundColor(.white)
                    .background(.blue)
                    .cornerRadius(10)
            }
            }
        }
}


#Preview {
    ContentView()
}
