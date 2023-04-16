import SwiftUI

struct GameView: View {
    @State var model = PuzzleModel()
    @State var helpIsActive = false
    
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
                    GeometryReader { geometry in
                        HelpOverlay()
                            .onTapGesture {
                                withAnimation(.easeInOut(duration: 0.6)) {
                                    helpIsActive.toggle()
                                }
                            }
                            .offset(x: helpIsActive ? 0 : -(geometry.size.width * 0.2), y: +(geometry.size.height/8))
                    }
                    VStack(alignment: .center) {
                        PuzzleBoardView(model: $model)
                        VStack(spacing: 20) {
                            Button(action: {}, label: {
                                MainButton(text: "SHUFFLE", state: .primary
                                )
                            })
                            NavigationLink(destination: {CreditView()}, label: {
                                Text("credits")
                                    .font(Font(getFont(.louis)))
                                    .foregroundColor(Color("myblue"))
                                    .animation(.linear(duration: 1.0))
                            })
                        }.padding(.top, 56)
                    }
                }
            }.background(Color(""))
            .overlay(content: {
                EndingOverlay().opacity(gameManager.matches == [true, true, true, true, true, true, true, true, true] ? 1.0 : 0.0)
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
