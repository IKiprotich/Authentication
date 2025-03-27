//
//  ProfileView.swift
//  Authentication
//
//  Created by Ian   on 26/03/2025.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var viewModel:AuthViewModel
    var body: some View {
        //Header
        if let user = viewModel.currentUser {
            List{
                Section{
                    HStack{
                        Text(user.initials)
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frame(width: 72, height: 72)
                            .background(Color(.systemGray))
                            .clipShape(Circle())
                
                        VStack(alignment: .leading, spacing: 4){
                            Text(user.fullname)
                                .fontWeight(.semibold)
                                .font(.subheadline)
                                .padding(.top, 4)
                                
                            Text(user.email)
                                .font(.footnote)
                                .foregroundColor(.gray)
                            
                        }
                        
                    }
                }
                
                
                Section("General"){
                    HStack{
                        SettingsRowView(imageName: "gear",
                                        title: "Version",
                                        tintColor: Color(.systemGray))
                        
                        Spacer()
                        Text("1.0.0")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
                
                Section("Account"){
                    Button {
                        viewModel.signOut()
                    }
                    label: {
                        SettingsRowView(imageName: "arrow.left.circle.fill",
                                        title: "Sign Out",
                                        tintColor: .red)
                    }
                    
                    Button {
                        print("Delete Account...")
                    }
                    label: {
                        SettingsRowView(imageName: "xmark.circle.fill",
                                        title: "Delete Account",
                                        tintColor: .red)
                    }
                    
                }
            }
        }
    }

        }
#Preview {
    ProfileView()
}
