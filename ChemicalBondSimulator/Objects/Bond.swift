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
    var objectNode: SCNNode?
    
    class func generateBond(pos1: [Float], pos2: [Float]) -> Bond {
        let height = calcHeight(pos1, pos2: pos2)
        let bondGeometry = SCNCylinder(radius: CGFloat(0.05), height: height)
        bondGeometry.firstMaterial?.diffuse.contents = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        let bond = Bond()
        bond.objectNode = SCNNode(geometry: bondGeometry)
        let position = calcPosition(pos1, pos2: pos2)
        bond.objectNode!.position = SCNVector3(x: position[0], y: position[1], z: position[2])
//        bond.objectNode!.eulerAngles.x = calcAngle(pos1[2], axis2: pos2[2], height: height)
//        bond.objectNode!.eulerAngles.y = calcAngle(pos1[0], axis2: pos2[0], height: height)
        bond.objectNode!.eulerAngles.z = calcAngle(pos1[1], axis2: pos2[1], height: height)
        
        return bond
    }
    
    static func calcHeight(pos1: [Float], pos2: [Float]) -> CGFloat {
        var x: Float = pos1[0] - pos2[0]
        var y: Float = pos1[1] - pos2[1]
        var z: Float = pos1[2] - pos2[2]
        
        return CGFloat(sqrtf(x * x + y * y + z * z))
    }
    
    static func calcPosition(pos1: [Float], pos2: [Float]) -> [Float] {
        return [(pos1[0] + pos2[0]) / 2.0, (pos1[1] + pos2[1]) / 2.0, (pos1[2] + pos2[2]) / 2.0]
    }
    
    static func calcAngle(axis1: Float, axis2: Float, height: CGFloat) -> Float {
        return acos((axis1 - axis2) / Float(height))
    }
}