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
            ZStack {
                VStack(spacing: 36) {
                    Image("pindorama-header")
                    Text("Brazil beyond what meets the eye.").font(Font(getFont(.hecho)))
                        .foregroundColor(.white)
                    
                    NavigationLink(destination: GameView().navigationBarHidden(true), label: {
                        MainButton(text: "START!", state: .primary)
                    })
                }
                Image("arara")
                    .offset(x: 64, y: -240)
                HStack(alignment: .bottom) {
                    Image("tropicalia-menu-image")
                        .resizable()
                        .frame(width: 802.83, height: 549)
                    Spacer()
                }.offset(x: 20, y: 300)
            }
        }.background(Color("mygreen"))
            .navigationViewStyle(StackNavigationViewStyle())
    }
}
