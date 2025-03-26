//
//  RegistrationView.swift
//  Authentication
//
//  Created by Ian   on 26/03/2025.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var fullname = ""
    @State private var password = ""
    @State private var confirmpassword = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack{
            Image("hevyLogo")
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 120)
                .padding(.vertical, 32)
            
            
            VStack(spacing: 24){
                InputView(text: $email,
                          Title: "Email Address",
                          placeholder: "name@example.com", isSecureField: false)
                
                InputView(text: $fullname,
                          Title: "Full Name",
                          placeholder: "Enter Your Name", isSecureField: false)
                
                InputView(text: $password,
                          Title: "Password",
                          placeholder: "Enter your password", isSecureField: true)
                
                InputView(text: $confirmpassword,
                          Title: "Confirm Password",
                          placeholder: "Confirm your password", isSecureField: true)
                
            }
            .padding(.horizontal)
            .padding(.top, 12)
            
            Button {
                print("Sign User Up...")
            }
            label: {
                HStack {
                    Text("Sign up")
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
            
            Button {
                dismiss()
            }
            label: {
                HStack(spacing: 2){
                    Text("Already have an account?")
                    Text("Sign In")
                        .fontWeight(.bold)
                }
                .font(.system(size: 14))
                
            }
        }
    }
}

#Preview {
    RegistrationView()
}
