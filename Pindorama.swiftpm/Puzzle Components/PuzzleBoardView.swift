import SwiftUI

struct PuzzleBoardView: View {
    @Binding var model: PuzzleModel
        @EnvironmentObject var gameManager: GameManager
        
    
    let initialAngle: [Double] = [90, 180, 270]
    
    var body: some View {
        VStack(spacing: 0) {
            ForEach(0..<3) { row in
                HStack(spacing: 0) {
                    ForEach(0..<3) { col in
                        let number = model.board[row][col]
                        PuzzleBlockView(rotationAngle: initialAngle.randomElement()!, matched: false, number: number)
                    }.padding(2)
                }
            }
        }
    }
    
    
}
