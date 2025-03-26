//
//  LoginView.swift
//  Authentication
//
//  Created by Ian   on 26/03/2025.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                //Image or Logo
                Image("hevyLogo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 120)
                    .padding(.vertical, 32)
                  
                
                //Form Fields
                VStack(spacing: 24){
                    InputView(text: $email,
                              Title: "Email Address",
                              placeholder: "name@example.com", isSecureField: false)
                    
                    InputView(text: $password,
                              Title: "Password",
                              placeholder: "Enter your password", isSecureField: true)
                    
                }
                .padding(.horizontal)
                .padding(.top, 12)
                
                //Sign In Button
                
                Button {
                    print("Log User In...")
                }
                label: {
                    HStack {
                        Text("Sign In")
                            .fontWeight(.semibold)
                        Image(systemName: "arrow.right")
                    }
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                }
                .background(Color(.black))
                .cornerRadius(10)
                .padding(.top, 24)
                
                Spacer()
                
                //Sign Up button
                
                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden(true)
                    
                } label: {
                    HStack(spacing: 2){
                        Text("Dont have an account?")
                        Text("Sign Up")
                            .fontWeight(.bold)
                    }
                    .font(.system(size: 14))
                    }
                
            }
        }
    }
}

#Preview {
    LoginView()
}
