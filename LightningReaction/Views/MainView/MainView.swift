//
//  ContentView.swift
//  LightningReaction
//
//  Created by Jakub Klentak on 03/08/2023.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct MainView: View {
    @EnvironmentObject var gameModel: GameModel
    @State var showImmersiveSpace = false

    var body: some View {
        NavigationSplitView {
            List {
                HStack {
                    Text("**User**")
                        .frame(width: 200, alignment: .leading)
                    Text("**Score**")
                        .frame(width: 50)
                }
                ForEach(1...5, id: \.self) { value in
                    HStack {
                        Text("User \(value)")
                            .frame(width: 200, alignment: .leading)
                        Text("\(value)")
                            .frame(width: 50)
                    }
                }
            }
            .navigationTitle("Top Scores")
        } detail: {
            VStack {
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")

                Spacer()

                Button("PLAY", action: play)

                Spacer()

            }
            .navigationTitle("Lightinng Reaction")
            .padding()
        }
    }

    func play() {
        gameModel.isPlaying = true
    }
}

#Preview {
    MainView()
        .environmentObject(GameModel())
}
