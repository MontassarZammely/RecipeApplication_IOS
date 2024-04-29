//
//  CategoryView.swift
//  RecipeApplication
//
//  Created by Montassar Ben Zammel on 23/4/2024.
//

import SwiftUI

struct CategoryView: View {
    var body: some View {
        NavigationView {
            Text("My Category")
                .navigationTitle("My categories")
        }
        .navigationViewStyle(.stack)

        
    }
}

#Preview {
    CategoryView()
}
