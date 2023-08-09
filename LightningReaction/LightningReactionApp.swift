//
//  LightningReactionApp.swift
//  LightningReaction
//
//  Created by Jakub Klentak on 03/08/2023.
//

import SwiftUI

@main
struct LightningReactionApp: App {
    @StateObject private var gameModel = GameModel()

    var body: some Scene {
        WindowGroup {
            LightningReaction()
                .environmentObject(gameModel)
        }
    }
}
