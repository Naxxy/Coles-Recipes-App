//
//  ContentView.swift
//  Coles Recipes
//
//  Created by Alex Guglielmino on 19/10/2022.
//

import SwiftUI

// MARK: - Content
struct RecipeView: View {
    let recipe: Recipe
    
    var body: some View {
        ScrollView {
            VStack {
                Text(recipe.dynamicTitle)
                
                Text(recipe.dynamicDescription)
                
                Rectangle()
                    .frame(maxWidth: .infinity)
                    .frame(height: 300)
                
                // Recipe Details
                let recipeDetails = recipe.recipeDetails
                HStack {
                    VStack {
                        Text(recipeDetails.amountLabel)
                        Text(String(recipeDetails.amountNumber))
                    }
                    
                    VStack {
                        Text(recipeDetails.prepLabel)
                        Text(recipeDetails.prepTime)
                    }
                    
                    VStack {
                        Text(recipeDetails.cookingLabel)
                        Text(recipeDetails.cookingTime)
                    }
                }
                
                // Recipe Ingredients
                Text("Ingredients")
                
                ForEach(recipe.ingredients, id: \.self) { ingredient in
                    Label(ingredient, systemImage: "chevron.forward")
                }
            }
            .padding()
        }
    }
}

// MARK: - Previews
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipe: PreviewModels.sampleRecipe)
    }
}
