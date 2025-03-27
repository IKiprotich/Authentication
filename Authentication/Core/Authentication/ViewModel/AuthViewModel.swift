//
//  AuthViewModel.swift
//  Authentication
//
//  Created by Ian   on 26/03/2025.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore
@MainActor
class AuthViewModel: ObservableObject{
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: User?
    
    init(){
        
    }
     
    func signIn(withEmail email: String, password: String) async throws{
        
    }
    func createUser(withEmail email: String, password: String, fullname: String)async throws{
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            let user = User(id: result.user.uid, fullname: fullname, email: email )
            
            let encodedUser = try Firestore.Encoder().encode(user)
            try await Firestore.firestore().collection("users").document(result.user.uid).setData(encodedUser)
        }
        catch{
            print("DEBUG: Failed to create user with error \(error.localizedDescription)")
        }
        
    }
    func signOut(){
        
    }
    func deleteAccount(){
        
    }
    func fetchUser()async{
        
    }
}
