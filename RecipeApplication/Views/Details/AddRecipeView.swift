//
//  AddRecipeView.swift
//  RecipeApplication
//
//  Created by Montassar Ben Zammel on 6/5/2024.
//

import SwiftUI
struct AddRecipeView: View {
    @EnvironmentObject var recipesVM : RecipesViewModel
    @State private var name: String = ""
    @State private var SelectedCategory: Category = Category.main
    @State private var description: String = ""
    @State private var Ingredients: String = ""
    @State private var Directions: String = ""
    @State private var NavigateToRecipe = false
    @State private var Image: String = ""
    
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Name")){
                    TextField("Recipe Name", text: $name)
                }
                Section(header: Text("Category")){
                    Picker("Category", selection: $SelectedCategory){
                        ForEach(Category.allCases){ category in
                            Text(category.rawValue)
                                .tag(category)
                        }
                    } .pickerStyle(.menu)
                }
                Section(header: Text("Description")){
                    TextEditor(text: $description)

                }
                Section(header: Text("Ingredients")){
                    TextEditor(text: $Ingredients)

                }
                Section(header: Text("Directions")){
                    TextEditor(text: $Directions)

                }
//                Section(header: Text("Image")){
//                    TextEditor(text: $Image)
//
//                }
                
            }
            .toolbar(content : {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button{
                        dismiss()
                        
                    } label: {
                        Label("Cancel",systemImage: "xmark")
                            .labelStyle(.iconOnly)
                    }
                }
                
                ToolbarItem {
                    NavigationLink(isActive: $NavigateToRecipe) {
                        RecipeView(recipe: recipesVM.recipes.sorted{$0.datePublished > $1.datePublished}[0])
                    } label: {
                        Button{
                            NavigateToRecipe = true
                        } label: {
                            Label("Done",systemImage: "checkmark")
                                .labelStyle(.iconOnly)
                        }
                    }
                    .disabled(name.isEmpty)


                }
            })
            .navigationTitle("New Recipe")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    AddRecipeView()
        .environmentObject(RecipesViewModel())
}

extension AddRecipeView{
    private func saveRecipe(){
//        let now = Date()
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateFormat = "yyyy-mm-dd"
//        let datePublished = dateFormatter.string(from: now)
//        print(datePublished)
        let recipe = Recipe(name: name, image: "", description: description, ingredients: Ingredients, directions: Directions, category: SelectedCategory.rawValue, datePublished: "", url: "")
        recipesVM.addRecipe(recipe: recipe)
    }
}
