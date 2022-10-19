//
//  ContentView.swift
//  Coles Recipes
//
//  Created by Alex Guglielmino on 19/10/2022.
//

import SwiftUI

// MARK: - Content
struct RecipeView: View {
    var recipe: Recipe
    
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
                
                if let url = recipe.dynamicThumbnailUrl() {
                    AsyncImage(url: url) { image in
                        image
                            .resizable()
                            .scaledToFit()
                            .accessibilityLabel(recipe.dynamicThumbnailAlt)
                    } placeholder: {
                        ProgressView()
                            .progressViewStyle(.circular)
                    }
                }
                
                // Recipe Details
                Divider()
                
                RecipeDetailsView(recipeDetails: recipe.recipeDetails)
                
                Divider()
                
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
            RecipeDetailsItemView(title: recipeDetails.amountLabel, subtitle: String(recipeDetails.amountNumber))
                .frame(maxWidth: .infinity)
            
            Divider()
            
            RecipeDetailsItemView(title: recipeDetails.prepLabel, subtitle: recipeDetails.prepTime)
                .frame(maxWidth: .infinity)
            
            Divider()
            
            RecipeDetailsItemView(title: recipeDetails.cookingLabel, subtitle: recipeDetails.cookingTime)
                .frame(maxWidth: .infinity)
        }
    }
}

struct RecipeDetailsItemView: View {
    let title: String
    let subtitle: String
    
    var body: some View {
        VStack(alignment: .center) {
            Text(title)
                .font(.subheadline)
                .opacity(0.7)
            
            Text(subtitle)
                .font(.headline)
        }
    }
}

struct IngredientsView: View {
    let ingredients: [Ingredient]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("Ingredients")
                .font(.largeTitle)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.vertical)
            
            ForEach(ingredients, id: \.ingredient) { ingredient in
                Label(ingredient.ingredient, systemImage: "chevron.forward")
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
