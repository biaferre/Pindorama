//
//  File.swift
//  
//
//  Created by Bof on 17/04/23.
//

import Foundation
import SwiftUI

struct InfoOverlay: View {
    @EnvironmentObject var gameManager: GameManager

    var infoNum: Int
    let infoArray: InfoModel = InfoModel()

    
    var body: some View {
        ZStack {
            VStack(spacing: 16) {
                Text(infoArray.title[infoNum])
                    .font(Font(getFont(.hecho)))
                    .foregroundColor(.purple)
                Text(infoArray.text[infoNum])
                    .font(Font(getFont(.louisVerySmall)))
                    .foregroundColor(.black)
                Button(action: {
                    gameManager.isInfoShowing.toggle()
                }, label: {
                    MainButton(text: "Got it!")
                }).padding(12)
            }.padding(.horizontal, 52)
            .padding(.vertical, 44)
            .background(.white)
            .cornerRadius(36)
            infoArray.allImages[infoNum]
                .resizable()
                .frame(width: 465, height: 317.98)
                .offset(y: infoArray.spacing[infoNum])
        }.frame(width: 465)
            .offset(x: gameManager.isInfoShowing ? 640 : 1000)
            .animation(.easeInOut(duration: 0.5), value: gameManager.isInfoShowing)
    }
}
