//
//  Recipe.swift
//  Coles Recipes
//
//  Created by Alex Guglielmino on 19/10/2022.
//

import Foundation

struct Recipe {
    let dynamicTitle: String
    let dynamicDescription: String
    let dynamicThumbnail: String
    let dynamicThumbnailAlt: String
    let recipeDetails: RecipeDetails
    let ingredients: [String]
    
    func dynamicThumbnailUrl() -> URL? {
        return URL(string: dynamicThumbnail, relativeTo: ContentManager.baseUrl)
    }
}
