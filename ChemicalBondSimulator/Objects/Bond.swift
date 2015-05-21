//
//  Bond.swift
//  ChemicalBondSimulator
//
//  Created by KyoheiKato on 5/21/15.
//  Copyright (c) 2015 KyoheiKato. All rights reserved.
//

import Foundation
import UIKit
import SceneKit

class Bond {
    class func getBond(position1: [Float], position2: [Float]) -> SCNNode {
        let bondGeometry = SCNCylinder(radius: CGFloat(0.05), height: CGFloat(genHeight(position1, position2: position2)))
        bondGeometry.firstMaterial?.diffuse.contents = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        let bond = SCNNode(geometry: bondGeometry)
//        bond.eulerAngles.x = asinf(genHeight(position1, position2: position2) / (abs(position1[1] - position2[1])))
//        bond.eulerAngles.z = asin(sin(genHeight(position1, position2: position2) / (abs(position1[1] - position2[1]))))
        bond.position = SCNVector3(x: (position1[0] + position2[0]) / 2.0, y: (position1[1] + position2[1]) / 2.0, z: 0)
        bond.eulerAngles.z = 1.5
        return bond
    }
    
    static func genHeight(position1: [Float], position2: [Float]) -> Float {
        var x = abs(position1[0] - position2[0])
        var y = abs(position1[1] - position2[1])
        return sqrtf(x * x + y * y)
    }
}