//
//  RecipeModel.swift
//  RecipeApplication
//
//  Created by Montassar Ben Zammel on 23/4/2024.
//

import Foundation

enum Category: String , CaseIterable , Identifiable{
    var id : String {self.rawValue}
    case breakfast = "BreakFast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
}

struct Recipe:Identifiable{
    let id = UUID()
    let name : String
    let image : String
    let description : String
    let ingredients : String
    let directions : String
    let category : Category.RawValue
    let datePublished : String
    let url : String

}

extension Recipe {
    static let all : [Recipe] = [
      Recipe(
            name: "Spaghetti Carbonara",
            image: "https://assets.afcdn.com/recipe/20181031/83533_w1024h1024c1cx1746cy2327cxt0cyt0cxb3490cyb4655.jpg",
            description: "Indulge in the rich flavors of Italy with this traditional spaghetti carbonara recipe. Creamy eggs, crispy pancetta, and savory Parmesan cheese come together to create a decadent pasta dish that's sure to impress. Serve with a sprinkle of fresh parsley and extra grated Parmesan for a finishing touch.",
            ingredients: "8 oz spaghetti\n4 oz pancetta or bacon, diced\n2 cloves garlic, minced\n2 large eggs\n½ cup grated Parmesan cheese, plus extra for serving\nSalt and black pepper, to taste\nFresh parsley, chopped, for garnish",
            directions: "Cook the spaghetti according to package instructions until al dente. While the spaghetti is cooking, heat a large skillet over medium heat. Add the diced pancetta or bacon and cook until crispy, about 5 minutes. Add the minced garlic and cook for an additional 1-2 minutes. In a bowl, whisk together the eggs and grated Parmesan cheese. Drain the cooked spaghetti and add it to the skillet with the pancetta and garlic. Remove the skillet from heat and quickly pour the egg and cheese mixture over the hot pasta, stirring constantly to coat the spaghetti evenly. The residual heat will cook the eggs and create a creamy sauce. Season with salt and black pepper to taste. Serve immediately, garnished with chopped fresh parsley and extra grated Parmesan cheese.",
            category: "Pasta",
            datePublished: "2022-05-10",
            url: "https://www.example.com/spaghetti-carbonara-recipe"
        ),
      Recipe(
          name: "Vegetable Stir-Fry",
          image: "https://natashaskitchen.com/wp-content/uploads/2020/08/Vegetable-Stir-Fry-2.jpg",
          description: "Whip up a quick and healthy meal with this easy vegetable stir-fry recipe. Colorful bell peppers, broccoli florets, snap peas, and carrots are stir-fried with garlic, ginger, and a flavorful sauce until tender-crisp. Serve over steamed rice or noodles for a satisfying vegetarian dinner.",
          ingredients: "2 tablespoons vegetable oil\n2 cloves garlic, minced\n1 teaspoon grated fresh ginger\n1 red bell pepper, sliced\n1 yellow bell pepper, sliced\n1 cup broccoli florets\n1 cup snap peas\n1 carrot, julienned\n3 tablespoons soy sauce\n1 tablespoon rice vinegar\n1 tablespoon honey or maple syrup\n1 teaspoon cornstarch\nCooked rice or noodles, for serving",
          directions: "In a small bowl, whisk together the soy sauce, rice vinegar, honey or maple syrup, and cornstarch until smooth. Set aside. Heat the vegetable oil in a large skillet or wok over medium-high heat. Add the minced garlic and grated ginger and stir-fry for 1 minute, or until fragrant. Add the sliced bell peppers, broccoli florets, snap peas, and julienned carrot to the skillet. Stir-fry for 3-4 minutes, or until the vegetables are tender-crisp. Pour the sauce over the vegetables and toss to coat. Cook for an additional 1-2 minutes, or until the sauce has thickened and coats the vegetables evenly. Remove from heat. Serve the vegetable stir-fry hot over cooked rice or noodles.",
          category: "Main Course",
          datePublished: "2023-09-05",
          url: "https://www.example.com/vegetable-stir-fry-recipe"
      ),
        Recipe(
            name: "Classic Tiramisu",
            image: "https://www.cuisinart.com/globalassets/recipes/recipe_8859_498234801.jpg",
            description: "Indulge in the heavenly flavors of Italy with this classic tiramisu recipe. Layers of espresso-soaked ladyfingers and creamy mascarpone cheese, dusted with cocoa powder, create a dessert that's both elegant and irresistible. Serve chilled for the perfect ending to any meal.",
            ingredients: "1 cup strong brewed espresso, cooled\n3 tablespoons coffee liqueur (such as Kahlua), optional\n3 large eggs, separated\n⅔ cup granulated sugar, divided\n8 oz mascarpone cheese, softened\n1 teaspoon vanilla extract\n24 ladyfinger cookies\nCocoa powder, for dusting",
            directions: "In a shallow dish, combine the cooled espresso and coffee liqueur, if using. In a large mixing bowl, beat the egg yolks and ⅓ cup of sugar until pale and thick. Add the softened mascarpone cheese and vanilla extract, and beat until smooth and creamy. In a separate clean mixing bowl, beat the egg whites until soft peaks form. Gradually add the remaining ⅓ cup of sugar and continue beating until stiff peaks form. Gently fold the beaten egg whites into the mascarpone mixture until well combined. Dip each ladyfinger into the espresso mixture for a few seconds, making sure not to soak them too long. Arrange a layer of dipped ladyfingers in the bottom of a 9x9 inch serving dish. Spread half of the mascarpone mixture over the ladyfingers. Repeat with another layer of dipped ladyfingers and the remaining mascarpone mixture. Cover the dish with plastic wrap and refrigerate for at least 4 hours, or overnight, to allow the flavors to meld together. Before serving, dust the top of the tiramisu with cocoa powder. Slice and serve chilled.",
            category: "Dessert",
            datePublished: "2023-08-15",
            url: "https://www.example.com/classic-tiramisu-recipe"
        ),
        Recipe(
            name: "Grilled Lemon Herb Chicken",
            image: "https://feelgoodfoodie.net/wp-content/uploads/2019/07/Grilled-Lemon-Chicken-4.jpg",
            description: "Fire up the grill and enjoy tender and flavorful grilled lemon herb chicken. Marinated in a mixture of fresh herbs, garlic, and lemon juice, this chicken is perfect for summer gatherings or weeknight dinners. Serve with your favorite grilled vegetables for a complete meal.",
            ingredients: "4 boneless, skinless chicken breasts\n¼ cup olive oil\n2 cloves garlic, minced\n2 tablespoons fresh lemon juice\n2 tablespoons chopped fresh herbs (such as rosemary, thyme, and parsley)\nSalt and black pepper, to taste",
            directions: "In a small bowl, whisk together the olive oil, minced garlic, lemon juice, chopped herbs, salt, and black pepper. Place the chicken breasts in a resealable plastic bag or shallow dish and pour the marinade over them. Seal the bag or cover the dish and refrigerate for at least 30 minutes, or up to 4 hours, to allow the flavors to meld. Preheat the grill to medium-high heat. Remove the chicken from the marinade and discard any excess marinade. Grill the chicken breasts for 6-8 minutes per side, or until cooked through and no longer pink in the center. Remove from the grill and let rest for a few minutes before serving. Serve hot with grilled vegetables or your favorite side dishes.",
            category: "Main Course",
            datePublished: "2023-06-25",
            url: "https://www.example.com/grilled-lemon-herb-chicken-recipe"
        ),
        Recipe(
            name: "Mango Avocado Salsa",
            image: "https://natashaskitchen.com/wp-content/uploads/2016/06/Mango-Avocado-Salsa-Recipe-7.jpg",
            description: "Add a burst of tropical flavor to your meals with this vibrant mango avocado salsa. Ripe mangoes, creamy avocado, red onion, and cilantro are tossed together with lime juice and a pinch of chili flakes for a refreshing and zesty salsa that pairs perfectly with grilled fish, chicken, or tortilla chips.",
            ingredients: "2 ripe mangoes, peeled and diced\n1 ripe avocado, diced\n½ small red onion, finely chopped\n¼ cup chopped fresh cilantro\nJuice of 1 lime\nPinch of chili flakes (optional)\nSalt, to taste",
            directions: "In a medium bowl, combine the diced mangoes, diced avocado, chopped red onion, and chopped cilantro. Squeeze the lime juice over the mixture and sprinkle with chili flakes, if using. Season with salt to taste. Gently toss everything together until well combined. Serve immediately or refrigerate until ready to serve. Enjoy as a topping for grilled fish or chicken, or as a dip with tortilla chips.",
            category: "Appetizer",
            datePublished: "2023-07-10",
            url: "https://www.example.com/mango-avocado-salsa-recipe"
        ),
      Recipe(name: "Creamy Carrot Soup",
             image: "https://recipetineats.com/wp-content/uploads/2018/06/Carrot-Soup_1-2.jpg",
             description: "This bold-hued soup is perfectly sweet and seriously comforting. Peeling the red bell pepper helps make this carrot soup extra silky. Dress it up with a drizzle of rich cashew cream, pomegranate seeds, and chopped fresh parsley for a festive fall presentation.",
             ingredients: "½ cup cashews\n1 medium onion, cut into X-inch dice (2 cups)An1% pounds carrots, cut into ¼-inch dice (3% cups)In1 red bell pepper, peeled and cut into %inch dice (1 cup)\n1 sprig fresh rosemary\n1 sprig fresh thyme\n1 large fresh sage leaf\n4 cloves garlic, minced\n1 tablespoon lemon juicelnSea salt and freshly ground black pepper or cayenne pepper, to tasteln cup fresh pomegranate seeds\n2 tablespoons finely chopped fresh parsley",
             directions: "In a small bowl, cover the cashews with ½ cup hot water; let soak 20 minutes. Transfer cashews and remaining liquid to a blender; blend until smooth and Set aside. InIn a saucepan, combine onion, carrots, bell pepper, rosemary, thyme, sage, and garlic. Add X cup water and sauté over medium heat for 15 to 20 minutes, or until carrots are tender. InRemove pan from heat. Let vegetables cool for 10 minutes; then remove rosemary sprigs and thyme leaf. InTransfer sauteed vegetables to a blender, and puree to a smooth paste. Return pureed vegetables to saucepan and add 3 cups water and 1 tablespoon lemon juice. Season with salt and pepper. Bring soup to boiling. InTo serve, place soup in individual bowls, drizzle with cashew cream, and garnish with pomegranate seeds and parsley.",
             category: "Soup",
             datePublished: "2019-11-11",
             url: "https://www.forksoverknives.com/recipes/vegan-soups-stews/creamy-carrot=soup"
            )






        
    ]
    
}
