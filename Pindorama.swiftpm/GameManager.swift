import SwiftUI

class GameManager: ObservableObject {
    @Published var pageNumber: Int = 0
    @Published var matches: [Bool] = [false, false, false, false, false, false, false, false, false]
}
