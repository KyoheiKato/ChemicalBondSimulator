//
// Created by KyoheiKato on 5/20/15.
// Copyright (c) 2015 KyoheiKato. All rights reserved.
//

import Foundation
import UIKit
import SceneKit

protocol Molecule {
    var name: String { get }
    var objectNode: SCNNode { get }
    var sphere: SCNSphere { get }

    init(name: String)
}
