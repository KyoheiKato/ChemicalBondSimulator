//
//  Ethanol.swift
//  ChemicalBondSimulator
//
//  Created by KyoheiKato on 7/23/15.
//  Copyright (c) 2015 KyoheiKato. All rights reserved.
//

import Foundation
import UIKit

class Ethanol: Molecule {
    init() {
        super.init(name: "エタノール")
        self.description = "エタノール（ethanol）は示性式 C2H5OH、又は、CH3CH2OH で表されるアルコールの一つ。別名として、エチルアルコール（ethyl alcohol）や、酒類の主成分であるため「酒精」とも呼ばれる。アルコール類の中で、最も身近に使われる物質の1つである。揮発性が強く、殺菌・消毒のほか、燃料としても用いられる。\n水とエタノールの混合液を蒸留によって、二つの成分に完全に分離することはできない。これは水とエタノールが共沸をするためであり、この時の共沸混合物はエタノールが96%（質量パーセント濃度）、水が4%であるため、通常の蒸留によって得られるエタノールの最高濃度はおよそ96%である。ここにペンタン[2]などの成分が存在すると、始留に水分が集まるようになる。薬局方にある「無水エタノール」を作るときは、この三成分共沸によってさらに水分が除かれたのち、分別蒸留でさらに精製される。"
        let carbons = Carbon.generateAtoms(2) as [Carbon]
        let hydrogens = Hydrogen.generateAtoms(6) as [Hydrogen]
        let oxygens = Oxygen.generateAtoms(1) as [Oxygen]
        
        carbons[0].position = [-0.75, 0.0, 0.0]
        carbons[1].position = [0.75, 0.0, 0.0]
        
        hydrogens[0].position = [-1.5, 1.0, 0.0]
        hydrogens[1].position = [-1.5, -1.0, -0.5]
        hydrogens[2].position = [-1.5, -1.0, 0.5]
        hydrogens[3].position = [1.5, -1.0, -0.5]
        hydrogens[4].position = [1.5, -1.0, 0.5]
        hydrogens[5].position = [2.5, 1.0, 0.0]
        
        oxygens[0].position = [1.5, 1.0, 0.0]
        
        carbons[0].neighborAtoms = [1: [hydrogens[0], hydrogens[1], hydrogens[2], carbons[1]]]
        carbons[1].neighborAtoms = [1: [hydrogens[3], hydrogens[4], oxygens[0]]]
        
        oxygens[0].neighborAtoms = [1: [hydrogens[5]]]
        
        appendAtoms(carbons)
        appendAtoms(hydrogens)
        appendAtoms(oxygens)
        appendBonds()
        initLabelPosition()
    }
}