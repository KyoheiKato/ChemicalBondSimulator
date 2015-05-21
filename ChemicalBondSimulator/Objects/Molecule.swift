//
//  Molecule.swift
//  ChemicalBondSimulator
//
//  Created by KyoheiKato on 5/21/15.
//  Copyright (c) 2015 KyoheiKato. All rights reserved.
//

import Foundation
import UIKit

class Molecule {
    var name: String
    var atoms: [Atom] = []
    
    init(name: String) {
        self.name = name
    }
}