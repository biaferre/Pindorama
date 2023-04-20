//
//  CreditView.swift
//  Pindorama
//
//  Created by Bof on 16/04/23.
//

import Foundation
import SwiftUI

struct CreditView: View {
    @Environment(\.dismiss) var dismiss
    
    @State var blockController: Bool = false
    
    let creditText = "  all of the artwork, design, writing and code was made by me, out of the tenderness for the country I was born and raised in: Brazil, or Pindorama.\n\n I see that tropical countries such as Brazil tend to be painted in a very specific light in media: they have lots of biodiversity, some football, and... that’s all. lots of the country’s scientific, artistic and popular contributions go overlooked.\n\nI fully believe that we should all be more curious about each other's culture, about how the other thinks, why they think that... curiosity and empathy are keys for a better world. as much as I love learning about other cultures, I love sharing knowledge about mine!\n\n and with that spirit of looking beyond stereotypes, this projects aims to show you another side of Brazil! join this colourful short experience to explore a Brazil beyond what meets the eye.\n\n sound effects from the royalty-free asset sites https://mixkit.co and https://pixabay.com. fonts are from https://www.dafont.com/pt/"

    var body: some View {
        ScrollView {
            HStack {
                VStack {
                    HStack {
                        Button(action: {dismiss.callAsFunction()
                        }, label: {
                            NavigationButton(text: "back to game", isNext: false)
                                .padding(.top, 52)
                            .padding(.leading, 92)})
                        
                        Spacer()
                    }
                    VStack(alignment: .leading, spacing: 56) {
                        Image("pindorama-definition")
//                            .resizable()
//                            .frame(width: 418, height: 191.48)
                        Text(creditText)
                            .font(Font(getFont(.louis)))
                            .frame(width: 834)
                            .opacity(blockController ? 1.0 : 0.0)
                            .animation(.easeInOut, value: blockController)
                    }
                }
            }
        }.background(Color("myblue"))
            .navigationBarBackButtonHidden(true)
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                    withAnimation {
                        blockController = true
                    }
                }
            }
    }
}
