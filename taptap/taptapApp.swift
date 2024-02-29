
import SwiftUI

@main
struct tap_tapApp: App {
    @StateObject private var dataController = DataController()
    @StateObject var recipes = RecepiesViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipes)
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
