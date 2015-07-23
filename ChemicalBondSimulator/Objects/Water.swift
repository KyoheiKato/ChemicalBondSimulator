//
//  Water.swift
//  ChemicalBondSimulator
//
//  Created by KyoheiKato on 5/21/15.
//  Copyright (c) 2015 KyoheiKato. All rights reserved.
//

import Foundation
import UIKit

class Water: Molecule {
    
    init() {
        super.init(name: "水")
        let oxygens = Oxygen.generateAtoms(1) as [Oxygen]
        let hydrogens = Hydrogen.generateAtoms(2) as [Hydrogen]
        oxygens[0].position = [0.0, 0.5, 0.0]
        hydrogens[0].position = [-1.0, 0.0, 0.0]
        hydrogens[1].position = [1.0, 0.0, 0.0]
        oxygens[0].neighborAtoms = hydrogens
        
        appendAtoms(oxygens)
        appendAtoms(hydrogens)
        appendBonds()
        initLabelPosition()
    }
}