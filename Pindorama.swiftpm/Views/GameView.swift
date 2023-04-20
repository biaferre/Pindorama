//
//  GameView.swift
//  Pindorama
//
//  Created by Bof on 15/04/23.
//

import SwiftUI
import AVKit

struct GameView: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var gameManager: GameManager

    @State var model = PuzzleModel()
    @State var helpIsActive = true
    @State var audioPlayer: AVAudioPlayer!
    
    let helpSound = Bundle.main.path(forResource: "help-sound", ofType: "mp3")
    
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 12) {
                HStack {
                    Button(action: {dismiss.callAsFunction()
                    }, label: {
                        NavigationButton(text: "back to menu", isNext: false)
                            .padding(.top, 52)
                            .padding(.leading, 92)})

                    Spacer()
                }
                
                ZStack {
                    VStack(alignment: .center) {
                        PuzzleBoardView(model: $model)
                        VStack(spacing: 20) {
                            NavigationLink(destination: {CreditView()}, label: {
                                MainButton(text: "behind pindorama")
                            })
                        }
                        .padding(12)
                    }
                    GeometryReader { geometry in
                        helpOverlay
                            .onTapGesture {
                                audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: helpSound!))
                                self.audioPlayer.play()
                                
                                withAnimation(.easeInOut(duration: 0.6)) {
                                    helpIsActive.toggle()
                                }
                            }
                            .offset(x: helpIsActive ? 0 : -(geometry.size.width * 0.2), y: +(geometry.size.height/8))
                    }
                }
            }.background(Color("grey"))
            .overlay(content: {
                InfoOverlay(infoNum: gameManager.currentInfo).opacity(gameManager.isInfoShowing ? 1 : 0)
                    .animation(.easeInOut, value: gameManager.checkMatch())
                    .offset(x: 80)
                EndingOverlay().opacity(gameManager.checkMatch() ? 1.0 : 0.0)
                    .animation(.easeInOut, value: gameManager.checkMatch())
            })
        }
            .navigationBarHidden(true)
        .navigationViewStyle(StackNavigationViewStyle())
    }
}


struct PuzzleGameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
