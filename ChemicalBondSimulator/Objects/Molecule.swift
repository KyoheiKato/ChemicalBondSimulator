//
//  Molecule.swift
//  ChemicalBondSimulator
//
//  Created by KyoheiKato on 5/21/15.
//  Copyright (c) 2015 KyoheiKato. All rights reserved.
//

import Foundation
import UIKit
import SceneKit

class Molecule {
    var name: String
    var atoms: [Atom]
    var bonds: [Bond]
    
    init(name: String) {
        self.name = name
        atoms = []
        bonds = []
    }
    
    func appendAtoms(atoms: [Atom]) {
        for atom in atoms {
            atom.objectNode.position = SCNVector3(x: atom.position[0], y: atom.position[1], z: atom.position[2])
            atom.sphere.firstMaterial?.diffuse.contents = atom.color.getUIColor()
            atom.sphere.radius = CGFloat(atom.size!)
            self.atoms.append(atom)
        }
    }
    
    func appendBonds() {
        for atom in atoms {
            bonds.extend(atom.generateBonds())
        }
    }
    
    func initLabelPosition() {
        for atom in atoms {
            atom.labelGeometry = SCNText(string: "", extrusionDepth: 0.1)
            atom.labelGeometry!.font = UIFont(name: "HelveticaNeue-Bold", size: CGFloat(atom.size! * 1.5))
            atom.labelGeometry!.string = atom.name
            atom.labelNode = SCNNode(geometry: atom.labelGeometry!)
            atom.labelNode!.position = SCNVector3Make(atom.objectNode.position.x - Float(atom.size! / 1.7), atom.objectNode.position.y - Float(atom.size! / 1.7), atom.objectNode.position.z + Float(atom.size!) - Float(atom.labelGeometry!.extrusionDepth / 2.0))
            println("objectNode x:\(atom.objectNode.position.x) y: \(atom.objectNode.position.y) z: \(atom.objectNode.position.z)")
            println("labelNode x:\(atom.labelNode!.position.x) y:\(atom.labelNode!.position.y) z:\(atom.labelNode!.position.z)")
        }
    }
}