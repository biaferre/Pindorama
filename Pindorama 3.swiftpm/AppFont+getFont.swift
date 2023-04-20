//
//  AppFont+getFont.swift
//  Pindorama
//
//  Created by Bof on 15/04/23.
//

import Foundation
import SwiftUI

enum AppFont {
    case bimboBig, bimboSmall, louis, hecho, louisSmall, louisVerySmall
}

func getFont(_ font: AppFont) -> UIFont {
    switch font {
    case .bimboBig:
        return UIFont(name: "Bimbo", size: 72)!
    case .bimboSmall:
        return UIFont(name: "Bimbo", size: 32)!
    case .hecho:
        return UIFont(name: "HechoAMano-Regular", size: 40)!
    case .louis:
        return UIFont(name: "Louis George Cafe", size: 28)!
    case .louisSmall:
        return UIFont(name: "Louis George Cafe", size: 26)!
    case .louisVerySmall:
        return UIFont(name: "Louis George Cafe", size: 20)!
    }
    
    
}
