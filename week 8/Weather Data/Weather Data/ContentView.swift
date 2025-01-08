//
//  ContentView.swift
//  Weather Data
//
//  Created by labuser on 08/01/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(
                colors: [.blue, .white]),
                           startPoint: .top,
                           endPoint: .bottom
            )
            VStack{
                Text("Selangor, Malaysia")
                    .font(.system(size: 30))
                    .bold()
                    .foregroundColor(Color.white)
                    .padding(.top, 70)
                Image(systemName: "cloud.sun.fill")
                    .resizable()
                    .foregroundStyle(.white, .yellow)
                    .frame(width: 180, height: 160)
                    .padding(.top, 15)
                Text("30°C")
                    .font(.system(size: 65))
                    .bold()
                    .foregroundColor(Color.white)
                
                
            HStack{
                VStack{
                    Text("TUE")
                        .font(.system(size: 20))
                        .foregroundStyle(Color.white)
                        .padding(.top, 5)
                    Image(systemName: "sun.rain.fill")
                        .resizable()
                        .foregroundStyle(.blue, .yellow)
                        .frame(width: 45, height: 45)
                    Text("17°C")
                        .font(.system(size: 20))
                        .foregroundStyle(Color.white)
                        .padding(.top, 5)
                }.padding()
                VStack{
                    Text("WED")
                        .font(.system(size: 20))
                        .foregroundStyle(Color.white)
                        .padding(.top, 5)
                    Image(systemName: "sun.rain.fill")
                        .resizable()
                        .foregroundStyle(.blue, .yellow)
                        .frame(width: 45, height: 45)
                    Text("17°C")
                        .font(.system(size: 20))
                        .foregroundStyle(Color.white)
                        .padding(.top, 5)
                    }.padding()
                VStack{
                    Text("THU")
                        .font(.system(size: 20))
                        .foregroundStyle(Color.white)
                        .padding(.top, 5)
                    Image(systemName: "sun.rain.fill")
                        .resizable()
                        .foregroundStyle(.blue, .yellow)
                        .frame(width: 45, height: 45)
                    Text("17°C")
                        .font(.system(size: 20))
                        .foregroundStyle(Color.white)
                        .padding(.top, 5)
                    }.padding()
                VStack{
                    Text("FRI")
                        .font(.system(size: 20))
                        .foregroundStyle(Color.white)
                        .padding(.top, 5)
                    Image(systemName: "sun.rain.fill")
                        .resizable()
                        .foregroundStyle(.blue, .yellow)
                        .frame(width: 45, height: 45)
                    Text("17°C")
                        .font(.system(size: 20))
                        .foregroundStyle(Color.white)
                        .padding(.top, 5)
                    }.padding()
                VStack{
                    Text("SAT")
                        .font(.system(size: 20))
                        .foregroundStyle(Color.white)
                        .padding(.top, 5)
                    Image(systemName: "sun.rain.fill")
                        .resizable()
                        .foregroundStyle(.blue, .yellow)
                        .frame(width: 45, height: 45)
                    Text("17°C")
                        .font(.system(size: 20))
                        .foregroundStyle(Color.white)
                        .padding(.top, 5)
                    }.padding()
                }
                Spacer()
                HStack{
                    ZStack{
                        Color.white
                            .frame(width: 250, height: 50)
                            .cornerRadius(15)
                            .padding(.bottom, 150)
                            
                        Text("Change Day time")
                            .foregroundColor(Color.blue)
                            .padding(.bottom, 150)
                        
                    }
                    
                }
            }
            
            
        }.ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
