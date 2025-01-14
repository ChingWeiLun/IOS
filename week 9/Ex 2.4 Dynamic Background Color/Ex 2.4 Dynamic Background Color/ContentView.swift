//
//  ContentView.swift
//  Ex 2.4 Dynamic Background Color
//
//  Created by labuser on 14/01/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var isRed: Bool = true
    var body: some View {
        ZStack{
            Button(action:{isRed.toggle()
            }){
                Text("Toggle Red")
            }
        }
        Spacer()
        if (isRed == true){
            ZStack{
                Color(.red)
                    .edgesIgnoringSafeArea([.all])
            }
        }
        
    }
}

#Preview {
    ContentView()
}
