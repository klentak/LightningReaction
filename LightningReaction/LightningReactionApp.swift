//
//  LightningReactionApp.swift
//  LightningReaction
//
//  Created by Jakub Klentak on 03/08/2023.
//

import SwiftUI

@main
struct LightningReactionApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}
