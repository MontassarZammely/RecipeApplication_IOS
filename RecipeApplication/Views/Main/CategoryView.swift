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
            List {
                ForEach(Category.allCases) { category in
                    NavigationLink {
                        CatView(category : category )
                    } label: {
                        Text(category.rawValue + "s")

                    }

                }
            }
            .navigationTitle("My categories")
        }
        .navigationViewStyle(.stack)

        
    }
}

#Preview {
    CategoryView()
}
