//
//  RecipeApplicationApp.swift
//  RecipeApplication
//
//  Created by Montassar Ben Zammel on 23/4/2024.
//

import SwiftUI
import Firebase

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}
@main
struct RecipeApplicationApp: App {
    // Initialize Firebase in the @main struct's initializer
    init() {
        FirebaseApp.configure()
    }
    
    // Initialize your ViewModel as an environment object
    @StateObject var recipesViewModel = RecipesViewModel()
    
    var body: some Scene {
        WindowGroup {
            // Pass down the RecipesViewModel using .environmentObject(_:)
            LoginView()
                .environmentObject(recipesViewModel)
        }
    }
}
