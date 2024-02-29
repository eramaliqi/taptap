

import SwiftUI

@main
struct tap_tapApp: App {
    @StateObject var recipes = RecepiesViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipes)
        }
    }
}
