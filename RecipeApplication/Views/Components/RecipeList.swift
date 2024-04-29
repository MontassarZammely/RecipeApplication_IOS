//
//  RecipeList.swift
//  RecipeApplication
//
//  Created by Montassar Ben Zammel on 24/4/2024.
//

import SwiftUI

struct RecipeList: View {
    var Recipes :[Recipe]
    
    var body: some View {
        VStack{
            HStack {
                Text("\(Recipes.count) \(Recipes.count>1  ? "recipes" : "recipe")")
                    .font(.headline)
                    .fontWeight(.medium)
                .opacity(0.7)
                Spacer()
            }
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 150), spacing : 10)], spacing: 10) {
                ForEach(Recipes){Recipe in
                    RecipeCard(recipe: Recipe)
                    
                }
            }
            .padding(.top)
            
        }
        .padding(.horizontal)
    }
}

#Preview {
    ScrollView{
        RecipeList(Recipes: Recipe.all)
    }
}
