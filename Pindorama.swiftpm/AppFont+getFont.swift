//
//  AppFont+getFont.swift
//  Pindorama
//
//  Created by Bof on 15/04/23.
//

import Foundation
import SwiftUI

enum AppFont {
    case bimbo, louis, hecho //, .aloja
}

func getFont(_ font: AppFont) -> UIFont {
    switch font {
    case .bimbo:
        return UIFont(name: "Bimbo Trial", size: 72)!
    case .hecho:
        return UIFont(name: "HechoAMano-Regular", size: 40)!
    case .louis:
        return UIFont(name: "Louis George Cafe", size: 28)!
        
    }
    
}
