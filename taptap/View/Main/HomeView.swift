import SwiftUI

struct HomeView: View {
    @EnvironmentObject var rcVM: RecepiesViewModel
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    RecipeList(recipes: rcVM.recipes) }.navigationTitle("My recipes")
                }
            }
            .navigationViewStyle(.stack)
        }
    }


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(RecepiesViewModel())
    }
}
