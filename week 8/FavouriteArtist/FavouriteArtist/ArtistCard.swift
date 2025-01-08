//
//  ArtistCard.swift
//  FavouriteArtist
//
//  Created by labuser on 08/01/2025.
//

import SwiftUI

struct ArtistCard: View {
    var color: String
    var name: String
    var artist: String
    
    var body: some View {
        ZStack{
            Color(color)
            
            VStack{
                HStack{
                    Text(name)
                        .font(.title2)
                        .frame(width: 120)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("darkmode"))
                        .padding(.top, 120)
                    Spacer()
                    Image(artist)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.trailing, 30)
                    Text("Button")
                        .padding(.top, 120)
                        .padding(.trailing)
                        
                        
                }
            }
        }.cornerRadius(15)
            .frame(height: 150)
            .padding()
    }
}

#Preview {
    ArtistCard(color:"gray", name:"asdasdadasdasdasdas", artist:"milet")
}
