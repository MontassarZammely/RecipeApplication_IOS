//
//  RecipeCard.swift
//  RecipeApplication
//
//  Created by Montassar Ben Zammel on 24/4/2024.
//

import SwiftUI

struct RecipeCard: View {
    var recipe:Recipe
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: recipe.image)) { image in
                image
                    .resizable() // trod el taswira ala kad el cadre 
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .overlay(alignment : .bottom){
                        Text(recipe.name)
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .frame(maxWidth: 150)
                            .shadow(color: .black, radius: 3, x: 0,y: 0)
                            .padding()
                    }
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40,height: 90,alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .overlay(alignment : .bottom){
                        Text(recipe.name)
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .frame(maxWidth: 150)
                            .shadow(color: .black, radius: 3, x: 0,y: 0)
                            .padding()
                    }
        }
            
        }
        .frame(width: 160,height: 217,alignment: .top)
        .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color.gray]), startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 20.0, style: .continuous))
        .shadow(color : Color.black.opacity(0.3) , radius: 15, x: 0, y: 10)

    }
}

#Preview {
    RecipeCard(recipe: Recipe.all[3])
}
