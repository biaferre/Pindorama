//
//  ContentView.swift
//  Pindorama
//
//  Created by Bof on 06/04/23.
//

import SwiftUI
import Combine

struct PuzzleModel {
    var board: [[Int]] = [[1, 2], [3,4]]
    var blockOrientations: [[Double]] = [[0, 0], [0, 0]]
    
    func checkStatus() -> Bool {
        var sum = 0.0
        for row in 0..<board.count {
            for col in 0..<board[row].count {
                sum += blockOrientations[row][col]
            }
        }
        return sum == 0
    }
}

struct PuzzleBlockView: View {
    let number: Int
    
    @State var rotationAngle: Double
    @EnvironmentObject var gameManager: GameManager
    
    @State var blockUpright: Bool = false

    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 4)
                .fill(Color.white)
            Text("\(number)")
                .font(.largeTitle)
                .fontWeight(.bold)
        }
        .rotationEffect(.degrees(rotationAngle))
        .frame(width: 100, height: 100)
        .shadow(radius: 5)
        .onTapGesture {
            withAnimation {
                rotationAngle += 90
                blockUpright = checkIfUpright()
            }
        }
    }
    
    private func checkIfUpright() -> Bool {
        if rotationAngle.truncatingRemainder(dividingBy: 360) == 0 {
            return true
        }
        else {
            return false
        }
    }
}

struct PuzzleBoardView: View {
    @Binding var model: PuzzleModel
    @EnvironmentObject var gameManager: GameManager
    
    @State private var allBlocksMatched = false


    let initialAngle: [Double] = [0, 90, 180, 270]
    
    var body: some View {
        VStack(spacing: 0) {
            ForEach(0..<2) { row in
                HStack(spacing: 0) {
                    ForEach(0..<2) { col in
                        let number = model.board[row][col]
                        PuzzleBlockView(number: number, rotationAngle: initialAngle.randomElement()!)
                    }.padding(2)
                }
            }
        }
    }
    
    func checkStatus() {
        
    }

}


class GameManager: ObservableObject {
    @Published var matched: Int = 0
}

struct PuzzleGameView: View {
    @State var model = PuzzleModel()
    @State private var allBlocksMatched = false
    
    @EnvironmentObject var gameManager: GameManager
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Parabéns, você completou o jogo!")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.green)
                .opacity(gameManager.matched == 1 ? 1.0 : 0.0)
                .animation(.easeInOut(duration: 1.0))
            PuzzleBoardView(model: $model) // Use o binding para instanciar a PuzzleBoardView
            HStack {
                Button("Shuffle"){}
            }
        }
    }
    
}


struct PuzzleGameView_Previews: PreviewProvider {
  static var previews: some View {
    PuzzleGameView()
  }
}


