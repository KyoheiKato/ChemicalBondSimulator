//
//  MoleculeGenerator.swift
//  ChemicalBondSimulator
//
//  Created by KyoheiKato on 7/20/15.
//  Copyright (c) 2015 KyoheiKato. All rights reserved.
//

import Foundation

class MoleculeGenerator {

    init() {
    }
    
    class func generate() -> [Molecule] {
        var molecules: [Molecule] = []
        molecules.append(Water())
        molecules.append(CarbonDioxide())
        
        return molecules
    }
}