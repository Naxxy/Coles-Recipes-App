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
            let recipes = ContentManager.fetchRecipesFromBundle(resourceName: "recipesSample")!
            RecipeView(recipe: recipes.recipes.first!)
        }
    }
}
