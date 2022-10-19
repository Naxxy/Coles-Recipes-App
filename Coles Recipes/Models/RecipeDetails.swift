//
//  RecipeDetails.swift
//  Coles Recipes
//
//  Created by Alex Guglielmino on 19/10/2022.
//

import Foundation

struct RecipeDetails: Decodable, Equatable {
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
