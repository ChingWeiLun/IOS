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
            ArtistCard(color:"gray", name:"Milet", artist:"milet", web: "https://www.milet.jp/")
            ArtistCard(color:"blue", name:"Zarame", artist:"zarame", web: "https://jpop.fandom.com/wiki/Zarame")
            ArtistCard(color:"red", name:"Joji", artist:"joji", web: "https://www.youtube.com/channel/UCFl7yKfcRcFmIUbKeCA-SJQ")
            ArtistCard(color:"lightblue", name:"Satomi", artist:"satomi", web: "https://en.wikipedia.org/wiki/Satomi_Ishihara")
        }
    }
}

#Preview {
    ContentView()
}
