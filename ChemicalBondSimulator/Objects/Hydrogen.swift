//
// Created by KyoheiKato on 5/20/15.
// Copyright (c) 2015 KyoheiKato. All rights reserved.
//

import Foundation
import UIKit
import SceneKit

class Hydrogen: Molecule {
    var name: String
    var sphere: SCNSphere
    var objectNode: SCNNode

    required init (name: String) {
        self.name = name
        self.sphere = SCNSphere(radius: 1.0)
        self.sphere.firstMaterial?.diffuse.contents = UIColor.redColor()
        self.objectNode = SCNNode(geometry: self.sphere)
    }
}
