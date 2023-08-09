//
//  Point.swift
//  LightningReaction
//
//  Created by Jakub Klentak on 09/08/2023.
//

import Foundation
import RealityKit
import Spatial

class Point: Identifiable {
    var id: Int

    init(id: Int) {
        self.id = id
    }

    func genereatePointEntity(position: Point3D) -> ModelEntity {
        var point = ModelEntity(
            mesh: MeshResource.generateSphere(radius: 0.1),
            materials: [SimpleMaterial(color: .yellow, isMetallic: true)]
        )

        point.position = simd_float(position.vector)

        return point
    }
}
