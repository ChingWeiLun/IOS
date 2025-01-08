//
//  ContentView.swift
//  FavouriteArtist
//
//  Created by labuser on 18/12/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Image(systemName: "bell.badge")
                Image(systemName: "person")
                    .padding(.trailing, 10.0)
            }
        }
        HStack{
            Text("Favuorite Artist")
                .font(.title)
                .bold()
                .padding(.leading)
            Spacer()
        }
        ScrollView{
            ArtistCard(color:"gray", name:"Milet", artist:"milet")
            ArtistCard(color:"blue", name:"Zarame", artist:"zarame")
            ArtistCard(color:"red", name:"Joji", artist:"joji")
            ArtistCard(color:"lightblue", name:"Satomi", artist:"satomi")
        }
    }
}

#Preview {
    ContentView()
}
