//
//  CatView.swift
//  RecipeApplication
//
//  Created by Montassar Ben Zammel on 6/5/2024.
//

import SwiftUI

struct CatView: View {
    @EnvironmentObject var recipesVM : RecipesViewModel
    var category : Category
    
    
    var recipes: [Recipe]{
        return recipesVM.recipes.filter{$0.category == category.rawValue
        }
    }
    
    var body: some View {
        ScrollView{
            RecipeList(Recipes: recipes )
        }
        .navigationTitle(category.rawValue + "s")
}
}

#Preview {
    CatView(category: Category.dessert)
        .environmentObject(RecipesViewModel())
}
