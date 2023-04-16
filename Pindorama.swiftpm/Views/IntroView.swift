//
//  File.swift
//  
//
//  Created by Bof on 16/04/23.
//

import Foundation
import SwiftUI

struct InfoView: View {
    var title: String
    var text: String
    
    var body: some View {
        VStack {
            Text(title)
                .font(Font(getFont(.bimboBig)))
            Text(text)
                .font(Font(getFont(.louis)))
            }
        }
    }

struct FirstPage: View { // "Stigma" chapter
    @Environment(\.dismiss) var dismiss

    let text: String = "tropical countries such as Brazil, worldwide known for their beauty and nature, tend to be painted in a very specific light in movies, books etc.: they have lots of biodiversity, some football, and... that’s all.\n\nmost of their scientific contributions, urban elements, art and innovations go overlooked. "
    
    var body: some View {
        VStack {
            InfoView(title: "stigma", text: text)
            HStack(spacing: 332) {
                Button(action: {dismiss.callAsFunction()}, label: {
                    NavigationButton(text: "back", isNext: false)
                })
                NavigationLink(destination: {SecondPage().navigationBarHidden(true)}, label: {NavigationButton(text: "next", isNext: true)})

            }
        }
    }
}

struct SecondPage: View { // "What you miss" chapter
    @Environment(\.dismiss) var dismiss

    let text: String = "it is true that the wonders of biodiversity in Brazil should be protected!\n\nbut it seems that many other interesting contributions and values of tropical cultures are deemed as simply “exotic” and not worth looking into.\n\nthink about it..."
    
    var body: some View {
        VStack {
            InfoView(title: "what you miss", text: text)
            HStack(spacing: 332) {
                Button(action: {dismiss.callAsFunction()}, label: {
                    NavigationButton(text: "back", isNext: false)
                })
                NavigationLink(destination: {ThirdPage().navigationBarHidden(true)}, label: {NavigationButton(text: "next", isNext: true)})

            }
        }
    }
}

struct ThirdPage: View {
    @Environment(\.dismiss) var dismiss

    let text: String = "it is true that the wonders of biodiversity in Brazil should be protected!\n\nbut it seems that many other interesting contributions and values of tropical cultures are deemed as simply “exotic” and not worth looking into.\n\nthink about it..."
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Button(action: {dismiss.callAsFunction()}, label: {
                        NavigationButton(text: "back", isNext: false)
                    })
                    .padding(.top, 52)
                    .padding(.leading, 92)
                    Spacer()
                }
                InfoView(title: "see beyond", text: "there is so much more about brazil to be\ndiscovered! after all, to learn about a country’s\npeople is to learn more about the human\n experience as a whole.\n\nso join this colourful short experience to explore a\n\nBrazil beyond what meets the eye.")
                NavigationLink(destination: GameView().navigationBarHidden(true), label: {
                    MainButton(text: "EXPLORE!", state: .primary)
                })
            }
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}
