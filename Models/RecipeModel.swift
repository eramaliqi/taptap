
import Foundation

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

extension Recipe {
    static let all: [Recipe] = [
        Recipe(
            name: "Pancakes",
            image: "https://www.wholesomeyum.com/wp-content/uploads/2017/03/wholesomeyum-Low-Carb-Keto-Pancakes-Recipe-21.jpg",
            description: "Delicious fluffy pancakes",
            ingridients: "Flour, milk, eggs, sugar, baking powder",
            directions: "Mix ingredients and cook on a griddle",
            category: "dessert",
            created_at: "2024-02-29",
            url: "https://example.com/pancakes"
        ),
        Recipe(
            name: "Tomato Soup",
            image: "tomato_soup_image",
            description: "Homemade tomato soup",
            ingridients: "Tomatoes, onions, garlic, broth",
            directions: "Cook ingredients and blend into a smooth soup",
            category: "soup",
            created_at: "2024-02-28",
            url: "https://example.com/tomato-soup"
        ),
        Recipe(
            name: "Caesar Salad",
            image: "caesar_salad_image",
            description: "Classic Caesar salad",
            ingridients: "Romaine lettuce, croutons, parmesan cheese, Caesar dressing",
            directions: "Toss ingredients and drizzle with dressing",
            category: "salad",
            created_at: "2024-02-27",
            url: "https://example.com/caesar-salad"
        ),
        Recipe(
            name: "Spinach Artichoke Dip",
            image: "spinach_artichoke_dip_image",
            description: "Creamy spinach artichoke dip",
            ingridients: "Spinach, artichokes, cream cheese, sour cream",
            directions: "Mix ingredients and bake until bubbly",
            category: "appetizer",
            created_at: "2024-02-26",
            url: "https://example.com/spinach-artichoke-dip"
        ),
        Recipe(
            name: "Chicken Alfredo",
            image: "chicken_alfredo_image",
            description: "Rich and creamy chicken Alfredo pasta",
            ingridients: "Chicken, fettuccine, Alfredo sauce",
            directions: "Cook chicken, boil pasta, and toss in Alfredo sauce",
            category: "main",
            created_at: "2024-02-25",
            url: "https://example.com/chicken-alfredo"
        ),
        Recipe(
            name: "Garlic Parmesan Roasted Broccoli",
            image: "roasted_broccoli_image",
            description: "Roasted broccoli with garlic and Parmesan",
            ingridients: "Broccoli, garlic, Parmesan cheese, olive oil",
            directions: "Toss broccoli in olive oil, garlic, and Parmesan, then roast",
            category: "side",
            created_at: "2024-02-24",
            url: "https://example.com/roasted-broccoli"
        ),
        Recipe(
            name: "Chocolate Cake",
            image: "chocolate_cake_image",
            description: "Decadent chocolate cake",
            ingridients: "Flour, cocoa powder, sugar, eggs, butter",
            directions: "Mix ingredients, bake, and frost with chocolate icing",
            category: "dessert",
            created_at: "2024-02-23",
            url: "https://example.com/chocolate-cake"
        ),
        Recipe(
            name: "Margarita",
            image: "margarita_image",
            description: "Classic lime margarita",
            ingridients: "Tequila, triple sec, lime juice, simple syrup",
            directions: "Mix ingredients and serve over ice",
            category: "drink",
            created_at: "2024-02-22",
            url: "https://example.com/margarita"
        ),
        Recipe(
            name: "Trail Mix",
            image: "trail_mix_image",
            description: "Healthy and tasty trail mix",
            ingridients: "Nuts, dried fruits, chocolate chips",
            directions: "Mix ingredients and pack for a snack",
            category: "snack",
            created_at: "2024-02-21",
            url: "https://example.com/trail-mix"
        ),
        Recipe(
            name: "Avocado Toast",
            image: "avocado_toast_image",
            description: "Simple and nutritious avocado toast",
            ingridients: "Bread, avocado, salt, pepper, optional toppings",
            directions: "Toast the bread, spread mashed avocado, and season to taste",
            category: "breakfast",
            created_at: "2024-02-20",
            url: "https://example.com/avocado-toast"
        ),
        Recipe(
            name: "Minestrone Soup",
            image: "minestrone_soup_image",
            description: "Hearty and flavorful minestrone soup",
            ingridients: "Vegetables, beans, pasta, tomato broth",
            directions: "Simmer ingredients in a pot until vegetables are tender",
            category: "soup",
            created_at: "2024-02-19",
            url: "https://example.com/minestrone-soup"
        ),
        Recipe(
            name: "Greek Salad",
            image: "greek_salad_image",
            description: "Refreshing Greek salad with feta",
            ingridients: "Cucumbers, tomatoes, olives, feta cheese, Greek dressing",
            directions: "Combine ingredients and drizzle with Greek dressing",
            category: "salad",
            created_at: "2024-02-18",
            url: "https://example.com/greek-salad"
        ),
        Recipe(
            name: "Stuffed Mushrooms",
            image: "stuffed_mushrooms_image",
            description: "Savory stuffed mushrooms with herbs",
            ingridients: "Mushrooms, cream cheese, breadcrumbs, herbs",
            directions: "Fill mushrooms with the cream cheese mixture and bake",
            category: "appetizer",
            created_at: "2024-02-17",
            url: "https://example.com/stuffed-mushrooms"
        ),
        Recipe(
            name: "Chicken Piccata",
            image: "chicken_piccata_image",
            description: "Lemon-flavored chicken piccata",
            ingridients: "Chicken breasts, flour, lemon, capers, white wine",
            directions: "Dredge chicken in flour, cook, and make a lemony sauce",
            category: "main",
            created_at: "2024-02-16",
            url: "https://example.com/chicken-piccata"
        ),
        Recipe(
            name: "Grilled Asparagus",
            image: "grilled_asparagus_image",
            description: "Simple and delicious grilled asparagus",
            ingridients: "Asparagus, olive oil, garlic, lemon zest",
            directions: "Toss asparagus in olive oil and grill until tender",
            category: "side",
            created_at: "2024-02-15",
            url: "https://example.com/grilled-asparagus"
        ),
        Recipe(
            name: "Chocolate Chip Cookies",
            image: "chocolate_chip_cookies_image",
            description: "Classic chocolate chip cookies",
            ingridients: "Flour, butter, sugar, chocolate chips",
            directions: "Mix ingredients, shape into cookies, and bake",
            category: "dessert",
            created_at: "2024-02-14",
            url: "https://example.com/chocolate-chip-cookies"
        ),
        Recipe(
            name: "Mango Lassi",
            image: "mango_lassi_image",
            description: "Refreshing Indian mango yogurt drink",
            ingridients: "Mango, yogurt, milk, sugar, cardamom",
            directions: "Blend ingredients until smooth and serve chilled",
            category: "drink",
            created_at: "2024-02-13",
            url: "https://example.com/mango-lassi"
        ),
        Recipe(
            name: "Fruit Salad",
            image: "fruit_salad_image",
            description: "Colorful and sweet fruit salad",
            ingridients: "Assorted fruits, honey, lime juice",
            directions: "Dice fruits, toss with honey and lime juice, and chill",
            category: "snack",
            created_at: "2024-02-12",
            url: "https://example.com/fruit-salad"
        ),
        Recipe(
            name: "Eggplant Parmesan",
            image: "eggplant_parmesan_image",
            description: "Baked eggplant with marinara and cheese",
            ingridients: "Eggplant, marinara sauce, mozzarella, parmesan",
            directions: "Layer eggplant with sauce and cheese, then bake",
            category: "main",
            created_at: "2024-02-11",
            url: "https://example.com/eggplant-parmesan"
        ),
        Recipe(
            name: "Omelette",
            image: "omelette_image",
            description: "Fluffy and customizable omelette",
            ingridients: "Eggs, cheese, vegetables, salt, pepper",
            directions: "Whisk eggs, add ingredients, and cook to perfection",
            category: "breakfast",
            created_at: "2024-02-10",
            url: "https://example.com/omelette"
        ),
        Recipe(
            name: "Butternut Squash Soup",
            image: "butternut_soup_image",
            description: "Smooth and creamy butternut squash soup",
            ingridients: "Butternut squash, onions, garlic, broth",
            directions: "Roast squash, sauté onions and garlic, blend with broth",
            category: "soup",
            created_at: "2024-02-09",
            url: "https://example.com/butternut-squash-soup"
        ),
        Recipe(
            name: "Cobb Salad",
            image: "cobb_salad_image",
            description: "Classic Cobb salad with a variety of toppings",
            ingridients: "Lettuce, chicken, bacon, eggs, avocado, tomatoes",
            directions: "Arrange ingredients in rows and drizzle with dressing",
            category: "salad",
            created_at: "2024-02-08",
            url: "https://example.com/cobb-salad"
        ),
        Recipe(
            name: "Bruschetta",
            image: "bruschetta_image",
            description: "Fresh and flavorful tomato bruschetta",
            ingridients: "Tomatoes, garlic, basil, balsamic vinegar, bread",
            directions: "Dice tomatoes, mix with other ingredients, and top on bread",
            category: "appetizer",
            created_at: "2024-02-07",
            url: "https://example.com/bruschetta"
        ),
        Recipe(
            name: "Beef Stir-Fry",
            image: "beef_stirfry_image",
            description: "Quick and tasty beef stir-fry with vegetables",
            ingridients: "Beef, broccoli, bell peppers, soy sauce",
            directions: "Stir-fry beef and vegetables in a wok with soy sauce",
            category: "main",
            created_at: "2024-02-06",
            url: "https://example.com/beef-stir-fry"
        ),
        Recipe(
            name: "Garlic Mashed Potatoes",
            image: "mashed_potatoes_image",
            description: "Creamy garlic mashed potatoes",
            ingridients: "Potatoes, butter, milk, garlic, salt",
            directions: "Boil and mash potatoes, add butter, milk, and minced garlic",
            category: "side",
            created_at: "2024-02-05",
            url: "https://example.com/garlic-mashed-potatoes"
        ),
        Recipe(
            name: "Tiramisu",
            image: "tiramisu_image",
            description: "Classic Italian tiramisu dessert",
            ingridients: "Ladyfingers, coffee, mascarpone cheese, cocoa",
            directions: "Layer ladyfingers dipped in coffee with mascarpone mixture",
            category: "dessert",
            created_at: "2024-02-04",
            url: "https://example.com/tiramisu"
        ),
        Recipe(
            name: "Mojito",
            image: "mojito_image",
            description: "Refreshing minty mojito cocktail",
            ingridients: "White rum, mint leaves, lime, simple syrup, soda water",
            directions: "Muddle mint and lime, add rum, syrup, and top with soda",
            category: "drink",
            created_at: "2024-02-03",
            url: "https://example.com/mojito"
        ),
        Recipe(
            name: "Granola Bars",
            image: "granola_bars_image",
            description: "Homemade chewy granola bars",
            ingridients: "Oats, honey, nuts, dried fruits",
            directions: "Mix ingredients, press into a pan, and bake",
            category: "snack",
            created_at: "2024-02-02",
            url: "https://example.com/granola-bars"
        ),
        Recipe(
            name: "Pesto Pasta",
            image: "pesto_pasta_image",
            description: "Basil pesto pasta with pine nuts and Parmesan",
            ingridients: "Pasta, fresh basil, garlic, pine nuts, Parmesan",
            directions: "Blend basil, garlic, nuts, and cheese, toss with cooked pasta",
            category: "main",
            created_at: "2024-02-01",
            url: "https://example.com/pesto-pasta"
        ),

    ]
}

