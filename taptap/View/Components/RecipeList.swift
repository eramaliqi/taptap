
import SwiftUI

struct RecipeList: View {
    var recipes: [Recipe]
    
    var body: some View {
        VStack {
            HStack {
                Text("\(recipes.count) \(recipes.count > 1 ? "recipes" : "recipe")")
                    .font(.headline)
                    .fontWeight(.bold)
                    .opacity(0.8)
                
                Spacer()
            }
            
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 120), spacing: 20)]) {
                ForEach(recipes) { recipe in
                    NavigationLink(destination: RecipeView(recipe: recipe)){
                        RecipeCard(recipe: recipe)
                    }
             
                }
            }
            .padding(.top)
        }
        .padding(.horizontal)
    }
}
#Preview {
    ScrollView
    {
        RecipeList(recipes: Recipe.all)
    }

}
