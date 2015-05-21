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
        let oxygens: [Oxygen] = [Oxygen(), Oxygen()]
        let carbon: Carbon = Carbon()
        oxygens[0].position = [-1.0, 0.0, 0.0]
        oxygens[1].position = [1.0, 0.0, 0.0]
        carbon.position = [0.0, 0.0, 0.0]
        atoms.append(oxygens[0])
        atoms.append(carbon)
        atoms.append(oxygens[1])
    }
}
