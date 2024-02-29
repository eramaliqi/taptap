import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem { Label(
                    title: { Text("Home") },
                    icon: { Image(systemName: "house") }
                ) }
            
            CategoriesView()
                .tabItem { Label(
                    title: { Text("Categories") },
                    icon: { Image(systemName: "square.fill.text.grid.1x2") }
                ) }
            
            AddNewView()
                .tabItem { Label(
                    title: { Text("New") },
                    icon: { Image(systemName: "plus") }
                ) }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View{
        TabBar()
    }
}
