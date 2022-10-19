//
//  PreviewModels.swift
//  Coles Recipes
//
//  Created by Alex Guglielmino on 19/10/2022.
//

import Foundation

struct PreviewModels {
    static let sampleIngredients: [String] = [
        "1 cup (250ml) extra virgin olive oil, divided",
        "4 cups (240g) 2cm-pieces day-old Coles Bakery Stone Baked by Laurent Pane Di Casa",
        "4 Lebanese eggplants, halved lengthways"
    ]
    
    static let sampleRecipeDetails = RecipeDetails(
        amountLabel: "Serves",
        amountNumber: 8,
        prepLabel: "Prep",
        prepTime: "15m",
        cookingLabel: "Cooking",
        cookingTime: "15m"
    )
    
    static let sampleRecipe = Recipe(
        dynamicTitle: "Curtis Stone's tomato and bread salad with BBQ eggplant and capsicum",
        dynamicDescription: "For a crowd-pleasing salad, try this tasty combination of fresh tomato, crunchy bread and BBQ veggies. It’s topped with fresh basil and oregano for a finishing touch. ",
        dynamicThumbnail: "/content/dam/coles/inspire-create/thumbnails/Tomato-and-bread-salad-480x288.jpg",
        dynamicThumbnailAlt: "Tomato, bread and eggplant salad served in a large plate topped with basil leaves with vinaigrette on the side",
        recipeDetails: sampleRecipeDetails,
        ingredients: sampleIngredients
    )
}
//"recipeDetails": {
//  "prepNote": "+ cooling time",
//  "cookTimeAsMinutes": 15,
//  "prepTimeAsMinutes": 15
//},
