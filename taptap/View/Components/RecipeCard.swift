import SwiftUI

struct RecipeCard: View {
    var recipe: Recipe;
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: recipe.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .overlay(alignment: .bottom) { Text(recipe.name).font(.headline).foregroundColor(.white).shadow(color: .black, radius: 3, x:0, y:0).frame(maxWidth: 90)
                        .padding()}
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50, alignment: .center)
                    .frame(minWidth: .infinity, maxWidth: .infinity)
                    .overlay(alignment: .bottom) { Text(recipe.name).font(.headline).foregroundColor(.white).shadow(color: .black, radius: 3, x:0, y:0).frame(maxWidth: 90)
                        .padding()}
            }
            .frame(width: 180, height: 210, alignment: .top)
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [Color.gray.opacity(0.3), Color.gray]),
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
            .clipShape(RoundedRectangle(cornerRadius: 20, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
            .shadow(color: Color.black.opacity(0.4), radius: 15)

          
        }
    }
}

struct RecipeCard_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCard(recipe: Recipe.all[0])
    }}
