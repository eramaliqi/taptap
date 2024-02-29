import SwiftUI

struct CategoriesView: View {
    var body: some View {
        NavigationView {
            List(Category.allCases, id: \.self) { category in
                NavigationLink(destination: CategoryView(category: category)) {
                    Text(category.rawValue.capitalized + "s")
                }
                .navigationTitle(category.rawValue.capitalized + "s")
            }
            .navigationTitle("Categories")
        }
        .navigationViewStyle(.stack)
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
