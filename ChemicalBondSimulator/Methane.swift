//
//  Methane.swift
//  ChemicalBondSimulator
//
//  Created by KyoheiKato on 7/21/15.
//  Copyright (c) 2015 KyoheiKato. All rights reserved.
//

import Foundation

class Methane: Molecule {
    init() {
        super.init(name: "メタン")
        self.description = "メタン（独: Methan、英: methane）は最も単純な構造の炭化水素で、1個の炭素原子に4個の水素原子が結合した分子である。分子式は CH4。和名は沼気（しょうき）。CAS登録番号は [74-82-8]。カルバン (carbane) という組織名が提唱されたことがあるが、IUPAC命名法では非推奨である。\n分子は炭素が中心に位置する正四面体構造をとる。炭素‐水素間のすべてがσ結合で結合しておりπ結合が存在しないため、sp3混成軌道を取り、結合角は109ﾟである。\n常温、常圧で無色、無臭の気体。ヒトに対する毒性はない。融点 −183 ℃、沸点 −162 ℃。空気に対する比重 0.555。\n光などの刺激によって励起されハロゲン元素と反応し、水素原子がハロゲン原子に置換される。この反応は激しい発熱反応である。例えば塩素との混合気体を常温中で直射日光に曝すだけで発火する。"
        let carbons = Oxygen.generateAtoms(1) as [Carbon]
        let hydrogens = Hydrogen.generateAtoms(4) as [Hydrogen]
        carbons[0].position = [0.0, 0.0, 0.0]
        hydrogens[0].position = [0.0, 1.0, 0.0]
        hydrogens[1].position = [0.75, -0.75, 0.75]
        hydrogens[2].position = [-0.75, -0.75, 0.75]
        hydrogens[3].position = [0.0, -0.75, -1.0]
        carbons[0].neighborAtoms = [1: hydrogens]
        
        appendAtoms(carbons)
        appendAtoms(hydrogens)
        appendBonds()
        initLabelPosition()
    }
}