import SwiftUI


@main
struct MyApp: App {
    let gameManager = GameManager()
    

    var body: some Scene {
        WindowGroup {
                ContentView().environmentObject(gameManager)
        }
    }
}
