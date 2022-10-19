//
//  RecipeDetails.swift
//  Coles Recipes
//
//  Created by Alex Guglielmino on 19/10/2022.
//

import Foundation

struct RecipeDetails: Decodable {
    let amountLabel: String
    let amountNumber: Int
    let prepLabel: String
    let prepTime: String
    let prepNote: String?
    let cookingLabel: String
    let cookingTime: String
    let cookTimeAsMinutes: Int
    let prepTimeAsMinutes: Int
}

extension RecipeDetails {
    init?(json: [String: Any]) {
        guard let amountLabel = json["amountLabel"] as? String,
              let amountNumber = json["amountNumber"] as? Int,
              let prepLabel = json["prepLabel"] as? String,
              let prepTime = json["prepTime"] as? String,
              let cookingLabel = json["cookingLabel"] as? String,
              let cookingTime = json["cookingTime"] as? String,
              let cookTimeAsMinutes = json["cookTimeAsMinutes"] as? Int,
              let prepTimeAsMinutes = json["prepTimeAsMinutes"] as? Int
        else {
            return nil
        }
        
        self.amountLabel = amountLabel
        self.amountNumber = amountNumber
        self.prepLabel = prepLabel
        self.prepTime = prepTime
        self.prepNote = json["prepNote"] as? String
        self.cookingLabel = cookingLabel
        self.cookingTime = cookingTime
        self.cookTimeAsMinutes = cookTimeAsMinutes
        self.prepTimeAsMinutes = prepTimeAsMinutes
    }
}
