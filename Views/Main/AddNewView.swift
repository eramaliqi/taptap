import SwiftUI

struct AddNewView: View {
    @State private var showAdd = false
    var body: some View {
        NavigationView {
            Button("Add recipe") {
                showAdd = true;
            }       .navigationTitle("Add recipe")

         
            }
            .navigationViewStyle(.stack)
            .sheet(isPresented: $showAdd,  content: {
              AddRecipeView()
            })
    }
}

#Preview {
    AddNewView()
}
