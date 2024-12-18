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
        VStack{
            Color("gray")
                .frame(height: 150)
                .cornerRadius(15)
                .overlay(
                        HStack{
                            Text("Milet")
                                .font(.system(size: 24))
                                .foregroundColor(Color("darkmode"))
                                .multilineTextAlignment(.leading)
                                .padding(.leading, 25.0)
                                .padding(.top, 100.0)
                            Spacer()
                            Image("milet")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 130, height: 130)
                                .padding(.trailing, 30.0)
                                .padding(.top, 18.0)
                        }
                )
            Color("blue")
                .frame(height: 150)
                .cornerRadius(15)
                .overlay(
                        HStack{
                            Text("Zarame")
                                .font(.system(size: 24))
                                .foregroundColor(Color("darkmode"))
                                .multilineTextAlignment(.leading)
                                .padding(.leading, 25.0)
                                .padding(.top, 100.0)
                            Spacer()
                            Image("zarame")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 130, height: 130)
                                .padding(.trailing, 30.0)
                                .padding(.top, 18.0)
                            
                        }
                )
            Color("red")
                .frame(height: 150)
                .cornerRadius(15)
                .overlay(
                        HStack{
                            Text("Joji")
                                .font(.system(size: 24))
                                .foregroundColor(Color("darkmode"))
                                .multilineTextAlignment(.leading)
                                .padding(.leading, 25.0)
                                .padding(.top, 100.0)
                                
                            Spacer()
                            Image("joji")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 130, height: 130)
                                .padding(.trailing, 30.0)
                                .padding(.top, 18.0)
                        }
                )
            Color("lightblue")
                .frame(height: 150)
                .cornerRadius(15)
                .overlay(
                        HStack{
                            Text("Satomi Ishihara")
                                .font(.system(size: 24))
                                .foregroundColor(Color("darkmode"))
                                .multilineTextAlignment(.leading)
                                .padding(.leading, 25.0)
                                .padding(.top, 100.0)
                                
                            Spacer()
                            Image("satomi")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 130, height: 130)
                                .padding(.trailing, 30.0)
                                .padding(.top, 18.0)
                        }
                )
        }
        
        .padding()
    }
}

#Preview {
    ContentView()
}
