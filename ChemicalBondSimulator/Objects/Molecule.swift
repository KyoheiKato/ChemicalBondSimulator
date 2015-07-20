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
}