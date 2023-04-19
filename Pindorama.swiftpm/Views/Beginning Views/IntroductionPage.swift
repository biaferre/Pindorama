//
//  File.swift
//  
//
//  Created by Bof on 17/04/23.
//

import Foundation
import SwiftUI

struct IntroductionPage: View { // "What you miss" chapter
    @Environment(\.dismiss) var dismiss
    
    @State var blockController: [Bool] = [false, false, false]


    let text: String = "tropical countries such as Brazil tend to be painted in a very specific light in media: they have lots of biodiversity, some football, and... that’s all. lots of the country’s scientific, artistic and popular contributions go overlooked.\n\ni fully believe that we should all be more curious about each other's culture, about how the other thinks, why they think that... curiosity and empathy are keys for a better world. as much as i love learning about other cultures, i love sharing knowledge about mine!\n\n this projects aims to show you another side of Brazil! join this colourful short experience to explore a Brazil beyond what meets the eye."
    
    var body: some View {
        NavigationView {
            HStack(spacing: 146) {
                Spacer()
                VStack(spacing: 72) {
                    HStack {
                        Button(action: {dismiss.callAsFunction()}, label: {
                            NavigationButton(text: "back", isNext: false)
                        })
                        Spacer()
                    }
                    IntroViewModel(title: "see beyond", text: text)
                        NavigationLink(destination: {GameView().navigationBarHidden(true)}, label: {MainButton(text: "Start!", state: .primary)})
                        
                    Spacer()

                }
                VStack{
                    ForEach(0..<3) { num in
                        CardOverlay(index: num, delay: Double((num + 1)))
                            .offset(x: num == 1 ? 200 : -100)
                    }
                }
                Spacer()
                
            }
            .background(Color("mygreen"))
            .background(ignoresSafeAreaEdges: .all)
        }
            .navigationViewStyle(StackNavigationViewStyle())
        
        
    }
     
}
