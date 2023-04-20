import SwiftUI
import AVKit

struct PuzzleBlockView: View {
    @EnvironmentObject var gameManager: GameManager

    @State var rotationAngle: Double
    @State var matched: Bool
    
    @State var audioPlayer: AVAudioPlayer!
    
    let number: Int
    
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
                AudioServicesPlaySystemSound(1013)

                checkIfUpright()
                
            }
        }
        
    }
    
    
    private func generateSound(block: blockCase) {
        let sound = Bundle.main.path(forResource:
                                        block == .bonus ? "block-with-info"
                                     :  block == .right ? "block-upright"
                                     :  "block-turned", ofType: "mp3")
        audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        
        self.audioPlayer.play()

    }

    private func checkIfUpright() {

        if rotationAngle.truncatingRemainder(dividingBy: 360) == 0 {
            gameManager.matches[number - 1] = true
            
            if (number % 2 != 0) {
                generateSound(block: .bonus)

                gameManager.isInfoShowing = true
                gameManager.currentInfo = (number - 1)/2
            }
            else {
                generateSound(block: .right)
            }
        }
        else {
            generateSound(block: .wrong)

            gameManager.isInfoShowing = false
            gameManager.matches[number - 1] = false
        }
    }
    
    private func getBlockNum(_ number: Int) -> Int {
        return number
    }
}
