//
//  ProfileView.swift
//  OrderApp
//
//  Created by labuser on 05/02/2025.
//

import SwiftUI
import SwiftData

struct ProfileView: View {
    @Query var allItems: [MenuItem]
    @Environment(\.modelContext) private var modelContext
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    
    var body: some View {
        VStack {
            Text("Register Page")
                .font(.title)
            HStack{
                Text("Email")
                TextField("email", text: $email)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(15)
            }
            HStack{
                Text("Password")
                SecureField("password", text: $password)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(15)
            }
            HStack{
                Text("Confirm Password")
                SecureField("confirm password", text: $confirmPassword)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(15)
            }
            
            Button("Register"){}
            
            Button(action: {clearAllMenuItems()}){
                Text("Clear All Menu Items")
            }
        }.padding()
        
    }
    
    private func clearAllMenuItems() {
        for item in allItems {
            modelContext.delete(item)
        }
        try? modelContext.save()
    }
}

#Preview {
    ProfileView()
}
