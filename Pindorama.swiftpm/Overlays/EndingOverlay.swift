//
//  EndingOverlay.swift
//  Pindorama
//
//  Created by Bof on 16/04/23.
//

import Foundation
import SwiftUI

struct EndingOverlay: View {
    @State var isVisible: Bool = true
    @EnvironmentObject var gameManager: GameManager
    
    
    var body: some View {
        ZStack(alignment: .center) {
            GeometryReader { geometry in
                Rectangle()
                    .shadow(radius: 8)
                    .foregroundColor(.white)
                    .frame(width: geometry.size.width, height: geometry.size.height/3)
                    .position(x: geometry.frame(in: .local).midX, y: geometry.frame(in: .local).midY)
                VStack(alignment: .center, spacing: 48){
                    Image("beautiful-header")
                    Text("Brazil’s beauties and brains go hand in hand. i hope you feel inspired by and curious about the people and elements featured in this experience!")
                        .multilineTextAlignment(.center)
                        .frame(width: geometry.size.width*0.69)
                        .font(Font(getFont(.louis)))
                        .foregroundColor(.black)
                    HStack(spacing: 32) {
//                        Button(action: {MenuView()}, label: {
//                            MainButton(text: "back to menu", state: .secondary)}
//                        )
                        Button(action: {isVisible.toggle()}, label: {
                            MainButton(text: "keep playing", state: .primary)}
                        )
                    }
                }.position(x: geometry.frame(in: .local).midX, y: geometry.frame(in: .local).midY)
            }
        }
        .opacity(isVisible ? 1.0 : 0.0)
            .animation(.easeIn)
    }
}

