import SwiftUI

struct GameView: View {
    @State var model = PuzzleModel()
    @State var helpIsActive = true

    
    @Environment(\.dismiss) var dismiss
    
    @EnvironmentObject var gameManager: GameManager
    
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 20) {
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
                                MainButton(text: "behind pindorama", state: .primary)
                            })
                        }.padding(20)
                    }
                    GeometryReader { geometry in
                        helpOverlay
                            .onTapGesture {
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
                    .animation(.easeInOut)
                    .offset(x: 80)
                EndingOverlay().opacity(gameManager.checkMatch() ? 1.0 : 0.0)
                    .animation(.easeInOut)
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
