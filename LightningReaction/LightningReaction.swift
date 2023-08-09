//
//  LightningReaction.swift
//  LightningReaction
//
//  Created by Jakub Klentak on 06/08/2023.
//

import SwiftUI

struct LightningReaction: View {
    @EnvironmentObject var gameModel: GameModel

    var body: some View {
        VStack {
            Spacer()
            Group {
                switch gameModel.isPlaying {
                case true:
                    GameView()
                case false:
                    MainView()
                }
            }
        }
    }
}

#Preview {
    LightningReaction()
        .environmentObject(GameModel())
}
