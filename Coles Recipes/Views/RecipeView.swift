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
            VStack(alignment: .center, spacing: 20) {
                Text(recipe.dynamicTitle)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 32)
                
                Text(recipe.dynamicDescription)
                    .font(.subheadline)
                    .multilineTextAlignment(.center)
                
                // TODO: Replace rectangle with URL image
                Rectangle()
                    .frame(maxWidth: .infinity)
                    .frame(height: 300)
                
                // Recipe Details
                RecipeDetailsView(recipeDetails: recipe.recipeDetails)
                
                // Recipe Ingredients
                IngredientsView(ingredients: recipe.ingredients)
            }
            .padding()
        }
    }
}

struct RecipeDetailsView: View {
    let recipeDetails: RecipeDetails
    
    var body: some View {
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
    }
}

struct IngredientsView: View {
    let ingredients: [String]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("Ingredients")
                .font(.largeTitle)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.vertical)
            
            ForEach(ingredients, id: \.self) { ingredient in
                Label(ingredient, systemImage: "chevron.forward")
                    .font(.body)
            }
        }
    }
}

// MARK: - Previews
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipe: PreviewModels.sampleRecipe)
    }
}
