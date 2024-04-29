//
//  TolBar.swift
//  RecipeApplication
//
//  Created by Montassar Ben Zammel on 23/4/2024.
//

import SwiftUI

struct TolBar: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            CategoryView()
                .tabItem {
                    Label("Categories", systemImage: "square.fill.text.grid.1x2")
                }
            
            NewRecipeView()
                .tabItem {
                    Label("New", systemImage: "plus")
                }
            
            FavoritesView()
                .tabItem {
                    Label("Favorites", systemImage: "heart")
                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

#Preview {
    TolBar()
}
