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
        oxygen.position = [0.0, 2.0, 0.0]
        hydrogens[0].position = [-3.0, 0.0, 0.0]
        hydrogens[1].position = [3.0, 0.0, 0.0]
        atoms.append(oxygen)
        for hydrogen in hydrogens {
            atoms.append(hydrogen)
        }
    }
}