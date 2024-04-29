//
//  NewRecipeView.swift
//  RecipeApplication
//
//  Created by Montassar Ben Zammel on 23/4/2024.
//

import SwiftUI

struct NewRecipeView: View {
    var body: some View {
        NavigationView {
            Text("My new Recipes!")
                .navigationTitle("My new Recipes!")
        }
        .navigationViewStyle(.stack)

    }
}

#Preview {
    NewRecipeView()
}
