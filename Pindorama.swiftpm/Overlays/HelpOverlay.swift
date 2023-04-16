//
//  HelpOverlay.swift
//  Pindorama
//
//  Created by Bof on 16/04/23.
//

import Foundation
import SwiftUI

struct HelpOverlay: View {
    
//    @State var helpIsActive: Bool

    var body: some View {
        HStack(alignment: .top, spacing: 0) {
            HStack(alignment: .top) {
                VStack {
                    (Text(" click")
                        .font(Font(getFont(.bimboSmall)))
                        .foregroundColor(Color("myyellowlight"))
                     + Text("  ")
                     + Text("on the tiles to rotate them and match the mosaic pattern. \n\n notice how many elements and/or figures you already associated with Brazil!")
                        .font(Font(getFont(.louis)))
                    ).frame(width: 282)
                }
            }.frame(width: 363, height: 530)
                .cornerRadius(8)
                .background(Color("mygreen"))
            ZStack {
                    Rectangle().frame(width: 144, height: 144)
                        .foregroundColor(Color("mygreen"))
                        .cornerRadius(4)
                    Text(" help")
                        .font(Font(getFont(.bimboSmall)))
                        .foregroundColor(Color("myyellowlight"))
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
