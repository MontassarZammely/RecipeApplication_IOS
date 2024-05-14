//
//  CategoryView.swift
//  RecipeApplication
//
//  Created by Montassar Ben Zammel on 6/5/2024.
//

import SwiftUI

struct CategoryView: View {
    var category : Category
    var body: some View {
        ScrollView{
            RecipeList(Recipes: Recipe.all.filter{$0.category == category.rawValue })
        }
    }
}

#Preview {
    CategoryView()
}
