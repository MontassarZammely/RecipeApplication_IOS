//
//  ContentView.swift
//  RecipeApplication
//
//  Created by Montassar Ben Zammel on 23/4/2024.
//

import SwiftUI
import Firebase

struct ContentView: View {
    
    //init() {
      //  FirebaseApp.configure()
    //}
    var body: some View {
       TolBar()
    }
}

struct ContentView_Previews : PreviewProvider{
    static var previews: some View{
        ContentView()
            .environmentObject(RecipesViewModel())
    }
}
