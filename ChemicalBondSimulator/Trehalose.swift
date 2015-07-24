//
//  Trehalose.swift
//  ChemicalBondSimulator
//
//  Created by KyoheiKato on 7/23/15.
//  Copyright (c) 2015 KyoheiKato. All rights reserved.
//

import Foundation
import UIKit

class Trehalose: Molecule {
    init() {
        super.init(name: "トレハロース")
        self.description = "トレハロース（trehalose）とはグルコースが1,1-グリコシド結合してできた二糖の一種である。1832年にウィガーズがライ麦の麦角から発見し、1859年、マルセラン・ベルテロが象鼻虫（ゾウムシ）が作るトレハラマンナ（マナ）から分離して、トレハロースと名づけた。\n高い保水力があり、食品や化粧品に使われる。抽出が難しく高価だったが、デンプンを素材とした安価な大量生産技術が岡山県の企業林原によって確立され、さまざまな用途に用いられている。\n・常温常圧で白色の粉末状の結晶。\n・20℃において、100 gの水に68.9 g溶解する。\n・スクロース（蔗糖）の約45%の甘味を持つ。"
        let carbons = Carbon.generateAtoms(12) as [Carbon]
        let oxygens = Oxygen.generateAtoms(11) as [Oxygen]
        let hydrogens = Hydrogen.generateAtoms(22) as [Hydrogen]
        
        carbons[0].position = [1.0, -0.75, -0.5]
        carbons[1].position = [2.5, -2.0, 0.0]
        carbons[2].position = [3.5, -0.75, 0.5]
        carbons[3].position = [4.25, 0.5, 0.0]
        carbons[4].position = [3.25, 0.75, -1.25]
        carbons[5].position = [4.0, 1.5, -2.25]
        carbons[6].position = [-1.0, 0.75, -0.5]
        carbons[7].position = [-2.5, 2.0, 0.0]
        carbons[8].position = [-3.5, 0.75, 0.5]
        carbons[9].position = [-4.25, -0.5, 0.0]
        carbons[10].position = [-3.25, -0.75, -1.25]
        carbons[11].position = [-4.0, -1.5, -2.25]
        
        oxygens[0].position = [0.0, 0.0, 0.0]
        oxygens[1].position = [2.0, 0.0, -1.0]
        oxygens[2].position = [1.5, -2.75, 0.5]
        oxygens[3].position = [4.5, -1.5, 1.0]
        oxygens[4].position = [5.0, 1.25, 0.5]
        oxygens[5].position = [4.75, 0.75, -1.25]
        oxygens[6].position = [-2.0, 0.0, -1.0]
        oxygens[7].position = [-1.5, 2.75, 0.5]
        oxygens[8].position = [-4.5, 2.0, 1.0]
        oxygens[9].position = [-5.25, -1.25, 0.75]
        oxygens[10].position = [-4.75, -0.75, -1.25]
        
        hydrogens[0].position = [0.5, -1.5, -1.0]
        hydrogens[1].position = [2.0, -3.5, 1.0]
        hydrogens[2].position = [3.25, -2.75, -1.0]
        hydrogens[3].position = [2.75, 0.0, 1.5]
        hydrogens[4].position = [4.75, -1.25, 2.0]
        hydrogens[5].position = [5.0, -0.25, -1.0]
        hydrogens[6].position = [4.5, 1.75, 1.5]
        hydrogens[7].position = [2.5, 1.25, 0.0]
        hydrogens[8].position = [5.25, 1.25, -2.25]
        hydrogens[9].position = [3.25, 2.25, -3.0]
        hydrogens[10].position = [4.5, 2.5, -1.75]
        hydrogens[11].position = [-0.5, 1.25, -1.5]
        hydrogens[12].position = [-1.25, 3.25, 1.5]
        hydrogens[13].position = [-3.25, 2.75, -1.0]
        hydrogens[14].position = [-4.0, 2.5, 1.5]
        hydrogens[15].position = [-2.75, 0.0, 1.5]
        hydrogens[16].position = [-6.0, -1.0, 1.5]
        hydrogens[17].position = [-5.0, 0.25, -1.0]
        hydrogens[18].position = [-2.5, -1.25, 0.0]
        hydrogens[19].position = [-5.25, -1.25, 0.0]
        hydrogens[20].position = [-3.25, -2.25, -3.0]
        hydrogens[21].position = [-4.5, -2.5, -1.75]
        
        carbons[0].neighborAtoms = [1: [oxygens[0], oxygens[1], hydrogens[0], carbons[1]]]
        carbons[1].neighborAtoms = [1: [oxygens[2], hydrogens[2], carbons[2]]]
        carbons[2].neighborAtoms = [1: [hydrogens[3], oxygens[3], carbons[3]]]
        carbons[3].neighborAtoms = [1: [hydrogens[5], oxygens[4], carbons[4]]]
        carbons[4].neighborAtoms = [1: [hydrogens[7], oxygens[1], carbons[5]]]
        carbons[5].neighborAtoms = [1: [hydrogens[9], hydrogens[10], oxygens[5]]]
        carbons[6].neighborAtoms = [1: [hydrogens[11], oxygens[0], oxygens[6], carbons[7]]]
        carbons[7].neighborAtoms = [1: [hydrogens[13], oxygens[7], carbons[8]]]
        carbons[8].neighborAtoms = [1: [hydrogens[15], oxygens[8], carbons[9]]]
        carbons[9].neighborAtoms = [1: [hydrogens[17], oxygens[9], carbons[10]]]
        carbons[10].neighborAtoms = [1: [hydrogens[18], oxygens[6], carbons[11]]]
        carbons[11].neighborAtoms = [1: [hydrogens[20], hydrogens[21], oxygens[10]]]
        
        
        oxygens[2].neighborAtoms = [1: [hydrogens[1]]]
        oxygens[3].neighborAtoms = [1: [hydrogens[4]]]
        oxygens[4].neighborAtoms = [1: [hydrogens[6]]]
        oxygens[5].neighborAtoms = [1: [hydrogens[8]]]
        oxygens[7].neighborAtoms = [1: [hydrogens[12]]]
        oxygens[8].neighborAtoms = [1: [hydrogens[14]]]
        oxygens[9].neighborAtoms = [1: [hydrogens[16]]]
        oxygens[10].neighborAtoms = [1: [hydrogens[19]]]
        
        
        appendAtoms(carbons)
        appendAtoms(oxygens)
        appendAtoms(hydrogens)
        appendBonds()
        initLabelPosition()
    }
}