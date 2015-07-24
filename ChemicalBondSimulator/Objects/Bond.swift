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
import GLKit
import Darwin

class Bond {
    var objectNode: SCNNode?
    
    class func generateSingleBond(pos1: [Float], pos2: [Float]) -> Bond {
        let height = calcHeight(calcDiffVector(pos1, pos2: pos2))
        let bondGeometry = SCNCylinder(radius: CGFloat(0.05), height: height)
        bondGeometry.firstMaterial?.diffuse.contents = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        let bond = Bond()
        bond.objectNode = SCNNode(geometry: bondGeometry)
        let position = calcPosition(pos1, pos2: pos2)

//        bond.objectNode!.rotation = calcRotation(calcDiffVector(pos1, pos2: pos2), height: height, rotation: bond.objectNode!.rotation)
        bond.objectNode!.orientation = calcRotation(calcDiffVector(pos1, pos2: pos2), height: height, rotation: bond.objectNode!.rotation)
//        bond.objectNode!.scale = SCNVector3Make(Float(0.05), Float(height), Float(0.05))

//        println("x: \(bond.objectNode!.rotation.x) y: \(bond.objectNode!.rotation.y) z: \(bond.objectNode!.rotation.z) w: \(bond.objectNode!.rotation.w)")
        bond.objectNode!.position = SCNVector3(x: position[0], y: position[1], z: position[2])
        return bond
    }
    
    class func generateBonds(pos1: [Float], pos2: [Float], bondNumber: Int) -> [Bond] {
        var bonds = [Bond]()
        for i in 1...bondNumber {
            bonds.append(Bond())
        }
        
        let height = calcHeight(calcDiffVector(pos1, pos2: pos2))
        let bondGeometry = SCNCylinder(radius: CGFloat(0.05), height: height)
        let position = calcPosition(pos1, pos2: pos2)
        bondGeometry.firstMaterial?.diffuse.contents = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        
        for bond in bonds {
            bond.objectNode = SCNNode(geometry: bondGeometry)
            bond.objectNode!.orientation = calcRotation(calcDiffVector(pos1, pos2: pos2), height: height, rotation: bond.objectNode!.rotation)
            bond.objectNode!.position = SCNVector3(x: position[0], y: position[1], z: position[2])
        }
        
        var counter = 0
        
//        if bondNumber % 2 == 0 {
//            
//            while counter < bonds.count {
//                let movement = counter / 2 + 1
//                
//            }
//        } else {
//            while counter < bonds.count {
//                let movement = (counter - 1) / 2 + 1
//                if counter == 0 {
//                    
//                }
//            }
//        }

        
        
        
        return bonds
    }
    
    static func calcDiffVector(pos1: [Float], pos2: [Float]) -> [Float] {
        return [(pos1[0] - pos2[0]), (pos1[1] - pos2[1]), (pos1[2] - pos2[2])];
    }
    
    static func calcHeight(pos: [Float]) -> CGFloat {
        return CGFloat(sqrtf(pos[0] * pos[0] + pos[1] * pos[1] + pos[2] * pos[2]))
    }
    
    static func calcPosition(pos1: [Float], pos2: [Float]) -> [Float] {
        return [(pos1[0] + pos2[0]) / 2.0, (pos1[1] + pos2[1]) / 2.0, (pos1[2] + pos2[2]) / 2.0]
    }
    
    static func calcRotation(pos: [Float], height: CGFloat, rotation: SCNVector4) -> SCNVector4 {
        let toVector = GLKVector3Normalize(SCNVector3ToGLKVector3(SCNVector3Make(pos[0], pos[1], pos[2])))
        let fromVector = GLKVector3Normalize(SCNVector3ToGLKVector3(SCNVector3Make(0.0, 1.0, 0.0)))
        let axis = GLKVector3CrossProduct(fromVector, toVector)
        let dot = GLKVector3DotProduct(fromVector, toVector)
        let angle = acosf(dot)
        let quaternion = GLKQuaternionNormalize(GLKQuaternionMakeWithAngleAndVector3Axis(angle, axis))
        println("x: \(axis.x) y: \(axis.y) z: \(axis.z)")
//        println(dot)
//        println(angle)
        println("quaternion x: \(quaternion.x) y: \(quaternion.y) z: \(quaternion.z) w: \(quaternion.w)")
        
        return SCNVector4Make(quaternion.x, quaternion.y, quaternion.z, quaternion.w)
    }
    
    static func calcQuaternion(relatedVector: [Float], rotation: SCNVector4) -> GLKQuaternion {
        let toVector = GLKVector3Normalize(SCNVector3ToGLKVector3(SCNVector3Make(relatedVector[0], relatedVector[1], relatedVector[2])))
        let fromVector = GLKVector3Normalize(SCNVector3ToGLKVector3(SCNVector3Make(0.0, 1.0, 0.0)))
        let axis = GLKVector3CrossProduct(fromVector, toVector)
        let dot = GLKVector3DotProduct(toVector, fromVector)
        let angle = (360.0 / (Float(M_PI * 2))) * acosf(dot)
        
        return GLKQuaternionNormalize(GLKQuaternionMakeWithAngleAndVector3Axis(angle, axis))
    }
}