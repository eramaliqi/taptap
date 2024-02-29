
import Foundation

class RecepiesViewModel: ObservableObject{
    @Published private(set) var recipes: [Recipe] = []
    
    init(){
        recipes = Recipe.all
    }
    
    func addRec(recipe: Recipe) {
        recipes.append(recipe)
    }
}
