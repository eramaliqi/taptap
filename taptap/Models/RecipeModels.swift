
import Foundation
import CoreData

enum Category: String, CaseIterable, Identifiable {
    var id: String {self.rawValue}
    case breakfast = "breakfast"
    case soup = "soup"
    case salad = "salad"
    case appetizer = "appetizer"
    case main = "main"
    case side = "side"
    case dessert = "dessert"
    case drink = "drink"
    case snack = "snack"
}

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingridients: String
    let directions: String
    let category: Category.RawValue
    let created_at: String
    let url: String
    
}

//extension Recipe {
//    static func fetchAllRecipes(context: NSManagedObjectContext) -> [Recipe] {
//        let request: NSFetchRequest<Recipes> = Recipes.fetchRequest()
//        
//        do {
//            let recipeEntities = try context.fetch(request)
//            return recipeEntities.map { recipeEntity in
//                Recipe(
//                    name: recipeEntity.name ?? "",
//                    image: recipeEntity.image ?? "",
//                    description: recipeEntity.desc ?? "",
//                    ingridients: recipeEntity.ingridients ?? "",
//                    directions: recipeEntity.directions ?? "",
//                    category: recipeEntity.category ?? "",
//                    created_at: recipeEntity.created_at ?? "",
//                    url: recipeEntity.url ?? ""
//                )
//            }
//        } catch {
//            print("Error fetching recipes: \(error)")
//            return []
//        }
//    }
//}

extension Recipe {
    static let all: [Recipe] = [
        Recipe(
            name: "Pancakes",
            image: "https://www.wholesomeyum.com/wp-content/uploads/2017/03/wholesomeyum-Low-Carb-Keto-Pancakes-Recipe-21.jpg",
            description: "Delicious fluffy pancakes",
            ingridients: "Flour, milk, eggs, sugar, baking powder".components(separatedBy: ", ").joined(separator: "\n"),
            directions: "Mix ingredients and cook on a griddle",
            category: "dessert",
            created_at: "2024-02-29",
            url: "https://example.com/pancakes"
        ),
        Recipe(
            name: "Tomato Soup",
            image: "https://www.foodandwine.com/thmb/j1vJdgrMdu64ElBpxMzmvqpyt5U=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/creamy-tomato-soup-buttery-croutons-hero-02-49b419d00f854db78838a79c8df9a23f.jpg",
            description: "Homemade tomato soup",
            ingridients: "Tomatoes, onions, garlic, broth".components(separatedBy: ", ").joined(separator: "\n"),
            directions: "Cook ingredients and blend into a smooth soup",
            category: "soup",
            created_at: "2024-02-28",
            url: "https://example.com/tomato-soup"
        ),
        Recipe(
            name: "Caesar Salad",
            image: "https://veganhuggs.com/wp-content/uploads/2021/05/vegan-caesar-salad-close-up.jpg",
            description: "Classic Caesar salad",
            ingridients: "Romaine lettuce, croutons, parmesan cheese, Caesar dressing".components(separatedBy: ", ").joined(separator: "\n"),
            directions: "Toss ingredients and drizzle with dressing",
            category: "salad",
            created_at: "2024-02-27",
            url: "https://example.com/caesar-salad"
        ),
        Recipe(
            name: "Spinach Artichoke Dip",
            image: "https://www.onceuponachef.com/images/2022/11/spinach-artichoke-dip-1-2.jpg",
            description: "Creamy spinach artichoke dip",
            ingridients: "Spinach, artichokes, cream cheese, sour cream".components(separatedBy: ", ").joined(separator: "\n"),
            directions: "Mix ingredients and bake until bubbly",
            category: "appetizer",
            created_at: "2024-02-26",
            url: "https://example.com/spinach-artichoke-dip"
        ),
        Recipe(
            name: "Chicken Alfredo",
            image: "https://www.modernhoney.com/wp-content/uploads/2019/04/Chicken-Fettucine-Alfredo-6.jpg",
            description: "Rich and creamy chicken Alfredo pasta",
            ingridients: "Chicken, fettuccine, Alfredo sauce".components(separatedBy: ", ").joined(separator: "\n"),
            directions: "Cook chicken, boil pasta, and toss in Alfredo sauce",
            category: "main",
            created_at: "2024-02-25",
            url: "https://example.com/chicken-alfredo"
        ),
        Recipe(
            name: "Garlic Parmesan Roasted Broccoli",
            image: "https://butteryourbiscuit.com/wp-content/uploads/2018/11/Parmesan-roasted-broccoli-9.jpg",
            description: "Roasted broccoli with garlic and Parmesan",
            ingridients: "Broccoli, garlic, Parmesan cheese, olive oil".components(separatedBy: ", ").joined(separator: "\n"),
            directions: "Toss broccoli in olive oil, garlic, and Parmesan, then roast",
            category: "side",
            created_at: "2024-02-24",
            url: "https://example.com/roasted-broccoli"
        ),
        Recipe(
            name: "Chocolate Cake",
            image: "https://scientificallysweet.com/wp-content/uploads/2020/09/IMG_4087-feature-2.jpg",
            description: "Decadent chocolate cake",
            ingridients: "Flour, cocoa powder, sugar, eggs, butter".components(separatedBy: ", ").joined(separator: "\n"),
            directions: "Mix ingredients, bake, and frost with chocolate icing",
            category: "dessert",
            created_at: "2024-02-23",
            url: "https://example.com/chocolate-cake"
        ),
        Recipe(
            name: "Margarita",
            image: "https://images.cocktailwave.com/tr:h-1200,w-1200/margarita.png",
            description: "Classic lime margarita",
            ingridients: "Tequila, triple sec, lime juice, simple syrup".components(separatedBy: ", ").joined(separator: "\n"),
            directions: "Mix ingredients and serve over ice",
            category: "drink",
            created_at: "2024-02-22",
            url: "https://example.com/margarita"
        ),
        Recipe(
            name: "Trail Mix",
            image: "https://lmld.org/wp-content/uploads/2021/02/Chocolate-Peanut-Butter-Trail-Mix-10-500x500.jpg",
            description: "Healthy and tasty trail mix",
            ingridients: "Nuts, dried fruits, chocolate chips".components(separatedBy: ", ").joined(separator: "\n"),
            directions: "Mix ingredients and pack for a snack",
            category: "snack",
            created_at: "2024-02-21",
            url: "https://example.com/trail-mix"
        ),
        Recipe(
            name: "Avocado Toast",
            image: "https://whatsgabycooking.com/wp-content/uploads/2023/01/Master.jpg",
            description: "Simple and nutritious avocado toast",
            ingridients: "Bread, avocado, salt, pepper, optional toppings".components(separatedBy: ", ").joined(separator: "\n"),
            directions: "Toast the bread, spread mashed avocado, and season to taste",
            category: "breakfast",
            created_at: "2024-02-20",
            url: "https://example.com/avocado-toast"
        ),
        Recipe(
            name: "Minestrone Soup",
            image: "https://cdn.loveandlemons.com/wp-content/uploads/2021/11/minestrone-soup-500x500.jpg",
            description: "Hearty and flavorful minestrone soup",
            ingridients: "Vegetables, beans, pasta, tomato broth".components(separatedBy: ", ").joined(separator: "\n"),
            directions: "Simmer ingredients in a pot until vegetables are tender",
            category: "soup",
            created_at: "2024-02-19",
            url: "https://example.com/minestrone-soup"
        ),
        Recipe(
            name: "Greek Salad",
            image: "https://i2.wp.com/www.downshiftology.com/wp-content/uploads/2018/08/Greek-Salad-6-1.jpg",
            description: "Refreshing Greek salad with feta",
            ingridients: "Cucumbers, tomatoes, olives, feta cheese, Greek dressing".components(separatedBy: ", ").joined(separator: "\n"),
            directions: "Combine ingredients and drizzle with Greek dressing",
            category: "salad",
            created_at: "2024-02-18",
            url: "https://example.com/greek-salad"
        ),
        Recipe(
            name: "Stuffed Mushrooms",
            image: "https://i2.wp.com/www.downshiftology.com/wp-content/uploads/2021/11/Stuffed-Mushrooms-main-1-1.jpg",
            description: "Savory stuffed mushrooms with herbs",
            ingridients: "Mushrooms, cream cheese, breadcrumbs, herbs".components(separatedBy: ", ").joined(separator: "\n"),
            directions: "Fill mushrooms with the cream cheese mixture and bake",
            category: "appetizer",
            created_at: "2024-02-17",
            url: "https://example.com/stuffed-mushrooms"
        ),
        Recipe(
            name: "Chicken Piccata",
            image: "https://i2.wp.com/www.downshiftology.com/wp-content/uploads/2023/05/Chicken-Piccata-main.jpg",
            description: "Lemon-flavored chicken piccata",
            ingridients: "Chicken breasts, flour, lemon, capers, white wine".components(separatedBy: ", ").joined(separator: "\n"),
            directions: "Dredge chicken in flour, cook, and make a lemony sauce",
            category: "main",
            created_at: "2024-02-16",
            url: "https://example.com/chicken-piccata"
        ),
        Recipe(
            name: "Grilled Asparagus",
            image: "https://www.seriouseats.com/thmb/ChkV1pLbydsYuoW-4zETC6QjPJs=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/SEA-simple-grilled-asparagus-recipe-hero-02-withservingutensil-cd400626b79b49e280f07c8eaee52103.jpg",
            description: "Simple and delicious grilled asparagus",
            ingridients: "Asparagus, olive oil, garlic, lemon zest".components(separatedBy: ", ").joined(separator: "\n"),
            directions: "Toss asparagus in olive oil and grill until tender",
            category: "side",
            created_at: "2024-02-15",
            url: "https://example.com/grilled-asparagus"
        ),
        Recipe(
            name: "Chocolate Chip Cookies",
            image: "https://images.aws.nestle.recipes/resized/5b069c3ed2feea79377014f6766fcd49_Original_NTH_Chocolate_Chip_Cookie_1080_850.jpg",
            description: "Classic chocolate chip cookies",
            ingridients: "Flour, butter, sugar, chocolate chips".components(separatedBy: ", ").joined(separator: "\n"),
            directions: "Mix ingredients, shape into cookies, and bake",
            category: "dessert",
            created_at: "2024-02-14",
            url: "https://example.com/chocolate-chip-cookies"
        ),
        Recipe(
            name: "Mango Lassi",
            image: "https://www.flavorquotient.com/wp-content/uploads/2023/05/Mango-Lassi-FQ-6-1036.jpg",
            description: "Refreshing Indian mango yogurt drink",
            ingridients: "Mango, yogurt, milk, sugar, cardamom".components(separatedBy: ", ").joined(separator: "\n"),
            directions: "Blend ingredients until smooth and serve chilled",
            category: "drink",
            created_at: "2024-02-13",
            url: "https://example.com/mango-lassi"
        ),
        Recipe(
            name: "Fruit Salad",
            image: "https://www.coinedcuisine.com/wp-content/uploads/2023/06/Coined-Cuisine_Rainbow-Fruit-Salad-P-scaled.jpg",
            description: "Colorful and sweet fruit salad",
            ingridients: "Assorted fruits, honey, lime juice".components(separatedBy: ", ").joined(separator: "\n"),
            directions: "Dice fruits, toss with honey and lime juice, and chill",
            category: "snack",
            created_at: "2024-02-12",
            url: "https://example.com/fruit-salad"
        ),
        Recipe(
            name: "Eggplant Parmesan",
            image: "https://alexandracooks.com/wp-content/uploads/2020/08/eggplantparm1_alexandraskitchen.jpg",
            description: "Baked eggplant with marinara and cheese",
            ingridients: "Eggplant, marinara sauce, mozzarella, parmesan".components(separatedBy: ", ").joined(separator: "\n"),
            directions: "Layer eggplant with sauce and cheese, then bake",
            category: "main",
            created_at: "2024-02-11",
            url: "https://example.com/eggplant-parmesan"
        ),
        Recipe(
            name: "Omelette",
            image: "https://www.simplyquinoa.com/wp-content/uploads/2023/03/egg-white-omelet-1.jpg",
            description: "Fluffy and customizable omelette",
            ingridients: "Eggs, cheese, vegetables, salt, pepper".components(separatedBy: ", ").joined(separator: "\n"),
            directions: "Whisk eggs, add ingredients, and cook to perfection",
            category: "breakfast",
            created_at: "2024-02-10",
            url: "https://example.com/omelette"
        ),
        Recipe(
            name: "Butternut Squash Soup",
            image: "https://joyfoodsunshine.com/wp-content/uploads/2020/10/butternut-squash-soup-recipe-13.jpg",
            description: "Smooth and creamy butternut squash soup",
            ingridients: "Butternut squash, onions, garlic, broth".components(separatedBy: ", ").joined(separator: "\n"),
            directions: "Roast squash, sauté onions and garlic, blend with broth",
            category: "soup",
            created_at: "2024-02-09",
            url: "https://example.com/butternut-squash-soup"
        ),
        Recipe(
            name: "Cobb Salad",
            image: "https://hips.hearstapps.com/del.h-cdn.co/assets/18/11/2048x1152/hd-aspect-1520887294-cobb-salad-delish.jpg?resize=1200:*",
            description: "Classic Cobb salad with a variety of toppings",
            ingridients: "Lettuce, chicken, bacon, eggs, avocado, tomatoes".components(separatedBy: ", ").joined(separator: "\n"),
            directions: "Arrange ingredients in rows and drizzle with dressing",
            category: "salad",
            created_at: "2024-02-08",
            url: "https://example.com/cobb-salad"
        ),
        Recipe(
            name: "Bruschetta",
            image: "https://images.themodernproper.com/billowy-turkey/production/posts/TomatoandAvocadoBruschetta_8.jpg?w=1200&h=1200&q=60&fm=jpg&fit=crop&dm=1690997775&s=4a0e918814cf59dcaf0d506f016bd650",
            description: "Fresh and flavorful tomato bruschetta",
            ingridients: "Tomatoes, garlic, basil, balsamic vinegar, bread".components(separatedBy: ", ").joined(separator: "\n"),
            directions: "Dice tomatoes, mix with other ingredients, and top on bread",
            category: "appetizer",
            created_at: "2024-02-07",
            url: "https://example.com/bruschetta"
        ),
        Recipe(
            name: "Beef Stir-Fry",
            image: "https://feelgoodfoodie.net/wp-content/uploads/2022/09/Teriyaki-Beef-Stir-Fry-08.jpg",
            description: "Quick and tasty beef stir-fry with vegetables",
            ingridients: "Beef, broccoli, bell peppers, soy sauce".components(separatedBy: ", ").joined(separator: "\n"),
            directions: "Stir-fry beef and vegetables in a wok with soy sauce",
            category: "main",
            created_at: "2024-02-06",
            url: "https://example.com/beef-stir-fry"
        ),
        Recipe(
            name: "Garlic Mashed Potatoes",
            image: "https://hips.hearstapps.com/hmg-prod/images/211104-delish-seo-garlic-mash-potatoes-horizontal-0070-eb-1636756906.jpg",
            description: "Creamy garlic mashed potatoes",
            ingridients: "Potatoes, butter, milk, garlic, salt".components(separatedBy: ", ").joined(separator: "\n"),
            directions: "Boil and mash potatoes, add butter, milk, and minced garlic",
            category: "side",
            created_at: "2024-02-05",
            url: "https://example.com/garlic-mashed-potatoes"
        ),
        Recipe(
            name: "Tiramisu",
            image: "https://handletheheat.com/wp-content/uploads/2023/12/best-tiramisu-recipe-SQUARE.jpg",
            description: "Classic Italian tiramisu dessert",
            ingridients: "Ladyfingers, coffee, mascarpone cheese, cocoa".components(separatedBy: ", ").joined(separator: "\n"),
            directions: "Layer ladyfingers dipped in coffee with mascarpone mixture",
            category: "dessert",
            created_at: "2024-02-04",
            url: "https://example.com/tiramisu"
        ),
        Recipe(
            name: "Mojito",
            image: "https://www.afarmgirlsdabbles.com/wp-content/uploads/2023/06/mojito-afarmgirlsdabbles-01v.jpg",
            description: "Refreshing minty mojito cocktail",
            ingridients: "White rum, mint leaves, lime, simple syrup, soda water".components(separatedBy: ", ").joined(separator: "\n"),
            directions: "Muddle mint and lime, add rum, syrup, and top with soda",
            category: "drink",
            created_at: "2024-02-03",
            url: "https://example.com/mojito"
        ),
        Recipe(
            name: "Granola Bars",
            image: "https://www.acouplecooks.com/wp-content/uploads/2021/08/Granola-Bars-011.jpg",
            description: "Homemade chewy granola bars",
            ingridients: "Oats, honey, nuts, dried fruits".components(separatedBy: ", ").joined(separator: "\n"),
            directions: "Mix ingredients, press into a pan, and bake",
            category: "snack",
            created_at: "2024-02-02",
            url: "https://example.com/granola-bars"
        ),
        Recipe(
            name: "Pesto Pasta",
            image: "https://www.dinneratthezoo.com/wp-content/uploads/2018/03/chicken-pesto-pasta-14-1.jpg",
            description: "Basil pesto pasta with pine nuts and Parmesan",
            ingridients: "Pasta, fresh basil, garlic, pine nuts, Parmesan".components(separatedBy: ", ").joined(separator: "\n"),
            directions: "Blend basil, garlic, nuts, and cheese, toss with cooked pasta",
            category: "main",
            created_at: "2024-02-01",
            url: "https://example.com/pesto-pasta"
        )
    ]
}
