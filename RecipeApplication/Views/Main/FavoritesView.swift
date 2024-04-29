//
//  FavoritesView.swift
//  RecipeApplication
//
//  Created by Montassar Ben Zammel on 23/4/2024.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationView {
            Text("You haven't saved anhy recipe favorite yet.")
                .padding()
                .navigationTitle("Favorites")
        }   
        .navigationViewStyle(.stack)

    }
}

#Preview {
    FavoritesView()
}
