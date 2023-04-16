import SwiftUI

struct GameView: View {
    @State var model = PuzzleModel()
    @State private var allBlocksMatched = false
    
    @EnvironmentObject var gameManager: GameManager
    
    
    var body: some View {
        VStack(spacing: 20) {
            NavigationButton(text: "back", isNext: false)
            Text("Parabéns, você completou o jogo!")
                .font(Font(getFont(AppFont.louis)))
                .fontWeight(.bold)
                .foregroundColor(.green)
                .opacity(gameManager.matches == [true, true, true, true, true, true, true, true, true] ? 1.0 : 0.0)
                .animation(.easeInOut(duration: 1.0))
            PuzzleBoardView(model: $model)
            Button(action: {}, label: {
                MainButton(text: "SHUFFLE", state: .primary
                )
            })
            NavigationLink(destination: {GameView()}, label: {
                Text("credits")
                    .font(Font(getFont(.louis)))
                    .foregroundColor(.blue)
            })
        }
    }
}


struct PuzzleGameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
