//
//  ContentView.swift
//  Ex 2.3 Input Validation
//
//  Created by labuser on 14/01/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var text: String = ""
    var body: some View {
        VStack {
            TextField("Required", text: $text)
                .font(.title)
                .padding()
                .background(Color("Color"))
                .frame(height: 70)
                .cornerRadius(15)
        }
        .padding()
        
        if(text.count >= 5){
            Text("Valid")
                .font(.title2)
                .foregroundColor(.green)
        }else{
            Text("Too Short")
                .font(.title2)
                .foregroundColor(.red)
        }
    }
}

#Preview {
    ContentView()
}
