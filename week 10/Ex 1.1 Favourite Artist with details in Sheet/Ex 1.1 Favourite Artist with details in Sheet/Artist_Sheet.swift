//
//  Artist_Sheet.swift
//  Ex 1.1 Favourite Artist with details in Sheet
//
//  Created by labuser on 15/01/2025.
//

import SwiftUI

struct Artist_Sheet: View {
    var color: String = "red"
        var name: String = ""
        var artist: String = "joji"
        
        var body: some View {
            ZStack{
                Color(color)

                VStack{
                    HStack{
                        Image(artist)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.leading, 30)
                    }
                }
            }.cornerRadius(15)
                .frame(height: 150)
                .padding()
        }
}

#Preview {
    Artist_Sheet()
}
