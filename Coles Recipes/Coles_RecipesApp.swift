//
//  Coles_RecipesApp.swift
//  Coles Recipes
//
//  Created by Alex Guglielmino on 19/10/2022.
//

import SwiftUI

@main
struct Coles_RecipesApp: App {
    var body: some Scene {
        WindowGroup {
            // TODO: Connect RecipeView to Real Data
            RecipeView(recipe: PreviewModels.sampleRecipe)
        }
    }
}
