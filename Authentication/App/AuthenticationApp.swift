//
//  AuthenticationApp.swift
//  Authentication
//
//  Created by Ian   on 26/03/2025.
//

import SwiftUI
import Firebase

@main
struct AuthenticationApp: App {
    @StateObject var viewModel = AuthViewModel()
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
