import SwiftUI

struct PuzzleBlockView: View {
    @State var rotationAngle: Double
    @State var matched: Bool
    
    @EnvironmentObject var gameManager: GameManager
    
    let number: Int // substituir pela imagem
    
    // block view
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.white)
            Text("\(number)")
                .foregroundColor(.green)
                .font(.largeTitle)
                .fontWeight(.bold)
        }
        .rotationEffect(.degrees(rotationAngle))
        .frame(width: 220, height: 220)
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
        }
        else {
            gameManager.matches[number - 1] = false
        }
    }
}
