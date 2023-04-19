//
//  HelpOverlay.swift
//  Pindorama
//
//  Created by Bof on 16/04/23.
//

import Foundation
import SwiftUI

extension GameView {
    
    //    @State var helpIsActive: Bool
    
    var helpOverlay: some View {
        HStack(alignment: .top, spacing: 0) {
            HStack(alignment: .top) {
                VStack {
                    (
                        Text("click")
                            .font(Font(getFont(.louis)))
                            .foregroundColor(Color("mypink"))
                        + Text(" on the tiles to rotate them and match the mosaic pattern. \n\n notice how many elements and/or figures you already associated with Brazil!")
                            .font(Font(getFont(.louis)))
                            .foregroundColor(.black)

                    ).frame(width: 282)
                }
            }.frame(width: 363, height: 530)
            
                .cornerRadius(8)
                .background(Color("mylimegreen"))
            VStack {
                ZStack {
                    Rectangle().frame(width: 144, height: 144)
                        .foregroundColor(Color("mylimegreen"))
                        .cornerRadius(4)
                    VStack(spacing:2) {
                        Text(self.helpIsActive ? "hide\nhelp" : "show\nhelp")
                            .font(Font(getFont(.hecho)))
                            .foregroundColor(Color("mypink"))
                        Image(self.helpIsActive ? "arrow-back" : "arrow-forward")
                            .foregroundColor(Color("mypink"))
                            .frame(width: 66)
                    }
                }
                //                Text("click to toggle")
                //                .font(Font(getFont(.louisSmall)))
                //                .foregroundColor(.gray)
                //                .offset(x: 20)
                //                }
                
            }
        }
    }
}
//
//struct HelpOverlay_Previews: PreviewProvider {
//    static var previews: some View {
//        HelpOverlay()
//    }
//}
