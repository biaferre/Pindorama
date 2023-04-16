//
//  ContentView.swift
//  Pindorama
//
//  Created by Bof on 06/04/23.
//

import SwiftUI
//import Combine


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
        if gameManager.pageNumber == 0 {
            GameView().environmentObject(gameManager)
        }
    
    }
}


