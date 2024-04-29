//
//  RecipeView.swift
//  RecipeApplication
//
//  Created by Montassar Ben Zammel on 29/4/2024.
//

import SwiftUI

struct RecipeView: View {
    var recipe: Recipe
    var body: some View {
        ScrollView{
            AsyncImage(url: URL(string: recipe.image)) { image in
                image
                    .resizable() // trod el taswira ala kad el cadre
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100,height: 100,alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .frame(width: 300)
            .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color.gray]), startPoint: .top, endPoint: .bottom))
            VStack(spacing: 30) {
                Text(recipe.name)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
            }
        }
        .ignoresSafeArea(.container, edges: .top)
        
        
    }
}


#Preview {
    RecipeView(recipe: Recipe.all[2])
}
