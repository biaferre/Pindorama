//
//  MenuView.swift
//  Pindorama
//
//  Created by Bof on 16/04/23.
//

import Foundation
import SwiftUI

struct MenuView: View {
    @EnvironmentObject var gameManager: GameManager

    var body: some View {
        NavigationView {
            VStack(spacing: 36) {
                Image("pindorama-header")
                Text("Brazil beyond what meets the eye.").font(Font(getFont(.hecho)))
                    .foregroundColor(.white)
                
                NavigationLink(destination: FirstPage(), label: {
                    MainButton(text: "START!", state: .primary)
                })
            }
        }.background(Color("mygreen"))
            .navigationViewStyle(StackNavigationViewStyle())
    }
}
