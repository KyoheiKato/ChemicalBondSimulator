//
//  Benzene.swift
//  ChemicalBondSimulator
//
//  Created by KyoheiKato on 5/23/15.
//  Copyright (c) 2015 KyoheiKato. All rights reserved.
//

import Foundation
import UIKit

class Benzene: Molecule {
    init() {
        super.init(name: "ベンゼン")
        let carbons = Carbon.generateAtoms(6)
        let hydrogens = Hydrogen.generateAtoms(6)
        
        carbons[0].position = [0.0, 1.0, 0.0]
        carbons[1].position = [0.5, 0.5, 0.0]
        carbons[2].position = [0.5, -0.5, 0.0]
        carbons[3].position = [0.0, -1.0, 0.0]
        carbons[4].position = [-0.5, -0.5, 0.0]
        carbons[5].position = [-0.5, 0.5, 0.0]
        
        hydrogens[0].position = [0.0, 1.5, 0.0]
        hydrogens[1].position = [0.75, 0.75, 0.0]
        hydrogens[2].position = [0.75, -0.75, 0.0]
        hydrogens[3].position = [0.0, -1.5, 0.0]
        hydrogens[4].position = [-0.75, -0.75, 0.0]
        hydrogens[5].position = [-0.75, 0.75, 0.0]
        
        appendAtoms(carbons)
        appendAtoms(hydrogens)
        appendBonds()
    }
}