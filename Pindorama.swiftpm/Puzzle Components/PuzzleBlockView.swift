import SwiftUI

struct PuzzleBlockView: View {
    @State var rotationAngle: Double
    @State var matched: Bool
    
    @EnvironmentObject var gameManager: GameManager
    
    let number: Int // substituir pela imagem
    
    // block view
    var body: some View {
        ZStack(alignment: .center) {
            Image("\(number)-frame")
                .resizable()
                .cornerRadius(14.67)
                .frame(width: 280, height: 280)



        }
        .rotationEffect(.degrees(rotationAngle))
        .frame(width: 280, height: 280)
        .shadow(radius: 5)
        .onTapGesture {
            withAnimation {
                rotationAngle += 90
                checkIfUpright()
            }
        }
    }
    
    
    // checks if block is upright and updates game manager
    private func checkIfUpright() {
        if rotationAngle.truncatingRemainder(dividingBy: 360) == 0 {
            gameManager.matches[number - 1] = true
            if (number % 2 != 0) {
                gameManager.isInfoShowing.toggle()
                gameManager.currentInfo = (number - 1)/2
            }
        }
        else {
            gameManager.isInfoShowing = false
            gameManager.matches[number - 1] = false
        }
    }
    
    private func getBlockNum(_ number: Int) -> Int {
        return number
    }
}
