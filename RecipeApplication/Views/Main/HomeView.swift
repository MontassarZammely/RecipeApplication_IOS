//
//  HomeView.swift
//  RecipeApplication
//
//  Created by Montassar Ben Zammel on 23/4/2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView{
                RecipeList(Recipes: Recipe.all)
            }
            .navigationTitle("My Recipes")
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    HomeView()
}
