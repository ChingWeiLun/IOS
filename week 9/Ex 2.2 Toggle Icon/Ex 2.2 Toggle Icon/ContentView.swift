//
//  ContentView.swift
//  Ex 2.2 Toggle Icon
//
//  Created by labuser on 14/01/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var status = false
    var body: some View {
        VStack{
            HStack{
                Toggle("", isOn: $status)
                    .padding(.leading)
            }
            if(status == true){
                Image(systemName: "speaker.wave.1.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .padding(.leading, 180)
            }
            else{
                Image(systemName: "speaker.slash.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .padding(.leading, 180)
            }
            
            
        }.padding(.trailing, 180)
            
        
        Spacer()
                
        
    }
}

#Preview {
    ContentView()
}
