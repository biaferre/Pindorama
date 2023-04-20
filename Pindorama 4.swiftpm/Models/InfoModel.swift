//
//  File.swift
//  
//
//  Created by Bof on 19/04/23.
//

import Foundation
import SwiftUI

struct InfoModel {
    var spacing: [CGFloat] = [-398.5, -400, -440, -461, -458]
    var allImages: [Image] = [Image("sk8-image"),
                              Image("science-image"),
                              Image("tropicalia-image"),
                              Image("health-image"),
                              Image("writer-image")]
    var title: [String] = ["Lively Cities",
                           "Pioneers of Science",
                           "Tropical Truth",
                           "Health for all!",
                           "Land of Saudade"]
    var text: [String] = [
        "Urban culture in Brazil’s cities is immensely rich. Skateboarding and rap music, for example, are both viewed as ways of life, especially in the capitals.\n\nRappers like Racionais MC, Djonga and musicians like Chico Science combine African American musicality with strong lyrics that express the turbulent moods of the urban landscape.\n\nGrafitti, an art world full of Brazilians, is used as a way to turn the otherwise grey cities into more colorful, alive - basically, more Brazilian - places to live.",
         "Brazilians have been innovators since day 1, being responsible for feats such as inventing the hot-air balloon.\n\nIn 2019, the Brazilian computer scientist Lia Medeiros led the team that processed the best photo of a black hole humanity has generated to this day! Kudos to her :)",
        "The Tropicália was an artistic movement in the late 60s, while Brazil was being subdued by a dictatorship.\n\nThrough music, poetry, theatre and cinema, artists like Gilberto Gil and Gal Costa mocked and criticised the absurdities of the regime, creating entire new genres through a mix of British rock and Brazilian music.\n\nIn this mix of influences, the artists of this period were responsible for bringing popularity to many African and Indigenous artistic elements that were considered “low class” or “less educated” at the time.",
        "Not only does Brazil have free healthcare through SUS (Sistema Unificado de Saúde), it has also starred in many breakthroughs in medical science.\n\nCarlos Chagas, the first scientist in world history to fully describe an infection, was a Brazilian doctor and Nobel prize winner for his treatment of Malaria, Chagas Disease and the Spanish Flu.\n\nDuring the COVID-19 outbreak, the Butantã Institute from the University of São Paulo developed one of the first vaccines against the virus, the CoronaVac, which is considered the best vaccine for those with comorbidities.",
        "Saudade, a Brazilian word that expresses the feeling of missing something or someone, is but one of the convoluted expressions used by Brazilian writers.\n\nOne of them is writer Clarice Lispector, called a “witch” because of her mysterious writing, and one of the most popular female Latin-American writers.\n\nAnother star is Vinícius de Moraes, author of the famous “Girl from Ipanema”. In his song “Onde Anda Você”, saudade is the main topic. The first verse begins: “... since we’re talking about saudade...”",
        ]
}

