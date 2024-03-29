//
//  ContentView.swift
//  Pindorama
//
//  Created by Bof on 06/04/23.
//

import SwiftUI
import AVKit


struct ContentView: View {
    @EnvironmentObject var gameManager: GameManager
    
    init() {
         let cfURL = Bundle.main.url(forResource: "Bimbo Trial", withExtension: "ttf")! as CFURL
         CTFontManagerRegisterFontsForURL(cfURL, CTFontManagerScope.process, nil)
        
         let cfURL2 = Bundle.main.url(forResource: "HechoAMano-Regular", withExtension: "ttf")! as CFURL
         CTFontManagerRegisterFontsForURL(cfURL2, CTFontManagerScope.process, nil)
        
        let cfURL3 = Bundle.main.url(forResource: "Louis George Cafe", withExtension: "ttf")! as CFURL
        CTFontManagerRegisterFontsForURL(cfURL3, CTFontManagerScope.process, nil)
        
     }
    
    var body: some View {
            MenuView()
            .environmentObject(gameManager)
            .frame(maxWidth: 2560, maxHeight: 1600)
            .background(Color("grey"))
    }
}


