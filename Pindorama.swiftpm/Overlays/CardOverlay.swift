//
//  File.swift
//  
//
//  Created by Bof on 17/04/23.
//

import Foundation
import SwiftUI

struct CardOverlay: View {
    @State var isVisible = false
    
    let index: Int
    let delay: Double
    
    var body: some View {
        
        ZStack {
            Image(index == 1 ? "singer-symbol" : index == 2 ? "fashion-symbol" : "cientista-symbol")
                .resizable()
                .scaledToFit()
                .frame(width: 340)
        }.frame(width: 340)
            .offset(x: isVisible ? 0 : 1000)
            .opacity(isVisible ? 1.0 : 0.0)
            .animation(.easeInOut(duration: 0.5))
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
                    withAnimation {
                        isVisible = true
                    }
                }
            }
    }
}
