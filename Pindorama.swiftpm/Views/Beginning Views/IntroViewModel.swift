//
//  File.swift
//  
//
//  Created by Bof on 16/04/23.
//


import Foundation
import SwiftUI

struct IntroViewModel: View {
    var title: String
    var text: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(Font(getFont(.bimboBig)))
            Text(text)
                .font(Font(getFont(.louis)))
                .frame(width:  570)
                .multilineTextAlignment(.leading)
            }
        }
    }
