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
        let oxygen: Oxygen = Oxygen()
        let hydrogens: [Hydrogen] = [Hydrogen(), Hydrogen()]
        oxygen.position = [0.0, 0.5, 0.0]
        hydrogens[0].position = [-1.0, 0.0, 0.0]
        hydrogens[1].position = [1.0, 0.0, 0.0]
        atoms.append(hydrogens[0])
        atoms.append(oxygen)
        atoms.append(hydrogens[1])
    }
}