//
//  Recipe.swift
//  Coles Recipes
//
//  Created by Alex Guglielmino on 19/10/2022.
//

import Foundation

struct Recipe: Decodable {
    let dynamicTitle: String
    let dynamicDescription: String
    let dynamicThumbnail: String
    let dynamicThumbnailAlt: String
    let recipeDetails: RecipeDetails
    let ingredients: [Ingredient]
    
    func dynamicThumbnailUrl() -> URL? {
        return URL(string: dynamicThumbnail, relativeTo: ContentManager.baseUrl)
    }
}

extension Recipe {
    init?(json: [String: Any]) {
        guard let dynamicTitle = json["dynamicTitle"] as? String,
              let dynamicDescription = json["dynamicDescription"] as? String,
              let dynamicThumbnail = json["dynamicThumbnail"] as? String,
              let dynamicThumbnailAlt = json["dynamicThumbnailAlt"] as? String,
              let recipeDetails = RecipeDetails(json: json["recipeDetails"] as? [String: Any] ?? [:])
        else {
            return nil
        }
        
        self.dynamicTitle = dynamicTitle
        self.dynamicDescription = dynamicDescription
        self.dynamicThumbnail = dynamicThumbnail
        self.dynamicThumbnailAlt = dynamicThumbnailAlt
        self.recipeDetails = recipeDetails
        self.ingredients = [] // TODO: Fix init of ingredients
    }
}
