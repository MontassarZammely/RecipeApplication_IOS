//
//  RecipesViewModel.swift
//  RecipeApplication
//
//  Created by Montassar Ben Zammel on 7/5/2024.
//

import Foundation

class RecipesViewModel : ObservableObject {
   @Published private(set) var recipes : [Recipe] = []
    
    init(){
        recipes = Recipe.all
    }
    
    func addRecipe(recipe : Recipe) {
        recipes.append(recipe)
    }
}
