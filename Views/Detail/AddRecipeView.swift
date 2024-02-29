import SwiftUI

struct AddRecipeView: View {
    @EnvironmentObject var rcVM: RecepiesViewModel
    @State private var name: String = ""
    @State private var selectedCategory: Category = Category.main
    @State private var description: String = ""
    @State private var ingridients: String = ""
    @State private var directions: String = ""
    @State private var navigateRec = false
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Name")) {
                    TextField("Recipe Name", text: $name)
                }
                
                Section(header: Text("Category")) {
                    Picker("Category", selection: $selectedCategory) {
                        ForEach(Category.allCases, id: \.self) { category in
                            Text(category.rawValue.capitalized)
                                .tag(category)
                        }
                    }
                }
                
                Section(header: Text("Description")) {
                    TextEditor(text: $description)
                }
                
                Section(header: Text("Ingredients")) {
                    TextEditor(text: $ingridients)
                }
                
                Section(header: Text("Directions")) {
                    TextEditor(text: $directions)
                }
                
            }
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Label("Cancel", systemImage: "xmark").labelStyle(.iconOnly)
                    }
                }
                
                ToolbarItem {
                    NavigationLink {
                        RecipeView(recipe: rcVM.recipes.sorted { $0.created_at > $1.created_at }[0])
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        Button {
                            saveRecipe()
                            navigateRec = true
                        } label: {
                            Label("Done", systemImage: "checkmark").labelStyle(.iconOnly)
                        }
                        .disabled(name.isEmpty && ingridients.isEmpty && description.isEmpty)
                    }
                }
            })
            .navigationTitle("New recipe")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
    }
}

struct AddRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipeView()
            .environmentObject(RecepiesViewModel())
    }
}

extension AddRecipeView {
    private func saveRecipe(){
        let now = Date()
        
        let dateformat = DateFormatter()
        dateformat.dateFormat = "yyyy-mm-dd"
        let created = dateformat.string(from: now)
        let recipe = Recipe(
            name: name,
            image: "",
            description: description,
            ingridients: ingridients,
            directions: directions,
            category: selectedCategory.rawValue,
            created_at: created,
            url: ""
        )

        
        rcVM.addRec(recipe: recipe)
    }
}
