//
//  NavigationButton.swift
//  Pindorama
//
//  Created by Bof on 15/04/23.
//

import Foundation
import SwiftUI

struct NavigationButton: View {
    var text: String
    var isNext: Bool
    
    var body: some View {
        Text(isNext ? "􀄫  \(text)" : "􀄪  \(text)")
                .font(Font(getFont(.hecho)))
    }
}
