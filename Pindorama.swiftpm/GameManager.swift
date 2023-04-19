import SwiftUI

class GameManager: ObservableObject {
    @Published var matches: [Bool] = [false, false, false, false, false, false, false, false, false]
        
    @Published var cardArray:[InfoOverlay] = [
        InfoOverlay(infoNum: 0),InfoOverlay(infoNum: 1),InfoOverlay(infoNum: 2),InfoOverlay(infoNum: 3),InfoOverlay(infoNum: 4),InfoOverlay(infoNum: 5)
    ]
    @Published var isInfoShowing: Bool = false
    @Published var currentInfo: Int = 0
}
