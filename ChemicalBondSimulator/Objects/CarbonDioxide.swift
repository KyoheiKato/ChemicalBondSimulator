//
//  CarbonDioxide.swift
//  ChemicalBondSimulator
//
//  Created by KyoheiKato on 5/22/15.
//  Copyright (c) 2015 KyoheiKato. All rights reserved.
//

import Foundation
import UIKit

class CarbonDioxide: Molecule {
    init() {
        super.init(name: "二酸化炭素")
        let oxygens = Oxygen.generateAtoms(2) as [Oxygen]
        let carbons = Carbon.generateAtoms(1) as [Carbon]
        oxygens[0].position = [-1.0, 0.0, 0.0]
        oxygens[1].position = [1.0, 0.0, 0.0]
        carbons[0].position = [0.0, 0.0, 0.0]
        carbons[0].neighborAtoms = [2: oxygens]
        
        appendAtoms(oxygens)
        appendAtoms(carbons)
        appendBonds()
        initLabelPosition()
    }
}
