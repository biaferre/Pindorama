import SwiftUI


@main
struct MyApp: App {
    let gameManager = GameManager()
    

    var body: some Scene {
        WindowGroup {
            if gameManager.pageNumber == 0 {
                ContentView().environmentObject(gameManager)
            }
        }
    }
}
