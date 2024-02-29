import SwiftUI
import CoreData

struct RecipeView: View {
    @Environment(\.managedObjectContext) var managedObjContext
    @FetchRequest(sortDescriptors: [NSSortDescriptor(keyPath: \Recipes.id, ascending: false)]) var recipes: FetchedResults<Recipes>

    var recipe: Recipe
    
    var body: some View {
        ScrollView {
            AsyncImage(url: URL(string: recipe.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                    .frame(minWidth: .infinity, maxWidth: .infinity)
            }
            .frame(height: 320)
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [Color.gray.opacity(0.3), Color.gray]),
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
            
            VStack(spacing: 30) {
                Text(recipe.name)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.top, 50)
                
                VStack(alignment: .leading, spacing: 30) {
                    if !recipe.description.isEmpty {
                        Text(recipe.description)
                    }
                    if !recipe.ingridients.isEmpty {
                    VStack(alignment: .leading, spacing: 20) {
                    
                            Text("Ingredients: ").font(.headline)
                            
                            Text(recipe.ingridients)
                        }
                    }
                    if !recipe.directions.isEmpty {
                    VStack(alignment: .leading, spacing: 20) {
           
                            Text("Direction: ").font(.headline)
                            
                            Text(recipe.directions)
                        }
                    }
                }
            }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading).padding(.horizontal)
        }
        .ignoresSafeArea(.container, edges: .top)
    }
}

//struct RecipeView_Previews: PreviewProvider {
//    static var previews: some View {
//        RecipeView(recipe: Recipe.all[0])
//    }
//}
