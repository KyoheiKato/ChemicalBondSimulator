//
// Created by KyoheiKato on 5/20/15.
// Copyright (c) 2015 KyoheiKato. All rights reserved.
//

import Foundation
import UIKit
import SceneKit


class Atom {
    var name: String
    var objectNode: SCNNode
    var sphere: SCNSphere
    var color: ColorSchema
    var size: Double
    var position: [Float] = []

    init(name: String, size: Double) {
        self.name = name
        self.size = size
        self.sphere = SCNSphere(radius: 1.0)
        self.color = ColorSchema(red: 100, green: 100, blue: 100)
        self.sphere.firstMaterial?.diffuse.contents = color.getUIColor()
        self.objectNode = SCNNode(geometry: self.sphere)
    }
}
