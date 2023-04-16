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
    
    let creditText = "  i feel immense tenderness for the people and the country i grew in, and thats where the idea for this project came from. its only fitting, then, that the credits session is almost as long as the experience itself!\n\n much credit is due to the amazing, insanely creative people i grow with side by side at my academy in Brazil. but i must also credit my non-academyfriends and my beautiful family, who teach me daily the love and wisdom of the brazilian way of life.\n\n it doesn’t end there! much, much thanks to everyone who creates art, does work or studies things in latin-america countries; all of you inspire me daily. we have a fire within us we must share with the rest of the world!\n\n  last, but definitely not least, i thank my wonderful girlfriend for believing in me throughout everything i try to do, even when i can’t."

    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Button(action: {dismiss.callAsFunction()
                    }, label: {
                        NavigationButton(text: "back to menu", isNext: false)
                            .padding(.top, 52)
                        .padding(.leading, 92)})
                    
                    Spacer()
                }
                Text(" credits ")
                    .font(Font(getFont(.bimboBig)))
                Text(creditText)
                    .font(Font(getFont(.louis)))
                    .frame(width: 834)
            }
        }.background(Color("myblue"))
            .navigationBarBackButtonHidden(true)
    }
}
