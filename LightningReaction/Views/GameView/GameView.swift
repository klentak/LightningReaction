//
//  GameView.swift
//  LightningReaction
//
//  Created by Jakub Klentak on 06/08/2023.
//

import SwiftUI
import RealityKit

struct GameView: View {
    let spaceOrigin: Entity
    let cameraAnchor: AnchorEntity
    let points: [Point]

    init() {
        self.spaceOrigin = Entity()
        self.cameraAnchor = AnchorEntity(.head)
        self.points = (0 ..< 10).map { Point(id: $0) }
    }

    var body: some View {
        RealityView { content in
            content.add(spaceOrigin)
            content.add(cameraAnchor)

            spawnPoint()
        }
    }

    func spawnPoint() {
        guard var point = points.first else {
            return
        }

        cameraAnchor.addChild(
            point.genereatePointEntity(position:
                Point3D(
                    x: 1.757_231_498_429_01,
                    y: 1.911_673_694_896_59,
                    z:  -8.094_368_331_589_704
                )
            )
        )
    }
}

#Preview {
    GameView()
}
