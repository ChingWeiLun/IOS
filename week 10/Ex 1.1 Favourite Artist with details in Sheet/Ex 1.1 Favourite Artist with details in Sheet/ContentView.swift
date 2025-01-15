//
//  ContentView.swift
//  Ex 1.1 Favourite Artist with details in Sheet
//
//  Created by labuser on 15/01/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedArtist: Artist? = nil
    var body: some View {
        List(artist){ item in
            Button(action: {
                selectedArtist = item})
            {
                Text(item.name)
            }
        }
        .sheet(item: $selectedArtist){item in
            Artist_Sheet(color: item.color, artist: item.photo)
            Text("Describe: \(item.desc)")
                .font(.system(size: 18))
            Button(action: {
                if let url = URL(string: item.link){
                UIApplication.shared.open(url)}
            }){
                Text("View")
                    .padding(8)
                    .bold()
                    .foregroundColor(.black)
                    .font(.system(size: 14))
                Image(systemName: "chevron.right")
                    .padding(8)
                    .padding(.leading, -15)
                .foregroundColor(.black)}.background(Color.yellow)
            
            .presentationDetents([.medium])}
    }
}

#Preview {
    ContentView()
}
