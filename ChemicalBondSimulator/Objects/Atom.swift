//
// Created by KyoheiKato on 5/20/15.
// Copyright (c) 2015 KyoheiKato. All rights reserved.
//

import Foundation
import UIKit
import SceneKit


class Atom {
    var name: String?
    var size: Double?
    var color: ColorSchema
    var sphere: SCNSphere
    var position: [Float]
    var objectNode: SCNNode
    var neighborAtoms: [Atom]

    required init() {
        self.color = ColorSchema(red: 100, green: 100, blue: 100)
        self.sphere = SCNSphere(radius: 1.0)
        self.sphere.firstMaterial?.diffuse.contents = color.getUIColor()
        self.position = [0, 0, 0]
        self.objectNode = SCNNode(geometry: self.sphere)
        self.neighborAtoms = []
    }
    
    class func generateAtoms<T: Atom>(atomNumber: Int) -> [T] {
        var atoms: [T] = []
        
        for i in 1...atomNumber {
            atoms.append(T())
        }
        
        return atoms
    }
    
    func generateBonds() -> [Bond] {
        var bonds: [Bond] = []
        
        for atom in neighborAtoms {
            let bond = Bond.generateBond(self.position, pos2: atom.position)
            bonds.append(bond)
        }
        
        return bonds
    }        
}
