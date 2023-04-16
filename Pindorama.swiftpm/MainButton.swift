//
//  MainButton.swift
//  Pindorama
//
//  Created by Bof on 15/04/23.
//

import Foundation
import SwiftUI


enum ButtonState {
    case primary, secondary
}

struct MainButton: View {
    var text: String
    var state: ButtonState
    
    var body: some View {
        ZStack {
            Text(text)
                .font(Font(getFont(.hecho)))
                .foregroundColor(.white)
                .padding(.bottom, 12)
                .padding(.top, 12)
                .padding(.leading, 56)
                .padding(.trailing, 56)

        }.background(state.self == .secondary ? .white : .blue)
            .border(.blue)
            .cornerRadius(8)
    }
}
