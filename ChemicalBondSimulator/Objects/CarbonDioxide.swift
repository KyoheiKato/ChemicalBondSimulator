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
        self.description = "二酸化炭素（にさんかたんそ、英: carbon dioxide）は、化学式が CO2 と表される無機化合物である。最近では、化学式から「シーオーツー」と呼ばれる事も多い。\n地球上で最も代表的な炭素の酸化物であり、炭素単体や有機化合物の燃焼によって容易に生じる。気体は炭酸ガス、固体はドライアイス、液体は、液体二酸化炭素、水溶液は炭酸、炭酸水と呼ばれる。常温常圧では無色無臭の気体。常圧では液体にならず、-79 °C で昇華して固体（ドライアイス）となる。水に比較的よく溶け、水溶液（炭酸）は弱酸性を示す。このためアルカリ金属およびアルカリ土類金属の水酸化物の水溶液および固体は二酸化炭素を吸収して、炭酸塩または炭酸水素塩を生ずる。高圧で二酸化炭素の飽和水溶液を冷却すると八水和物 CO2·8H2O を生ずる。\nアルカリ金属など反応性の強い物質を除いて助燃性はない。炭素を含む物質（石油、石炭、木材など）の燃焼、動植物の呼吸や微生物による有機物の分解、火山活動などによって発生する。反対に植物の光合成によって二酸化炭素は様々な有機化合物へと固定される。\nまた、三重点 (-56.6 °C、0.52 MPa) 以上の温度と圧力条件下では、二酸化炭素は液体化する。さらに温度と圧力が臨界点 (31.1 °C、7.4 MPa) を超えると超臨界状態となり、気体と液体の特徴を兼ね備えるようになる。これらの状態の二酸化炭素は圧縮二酸化炭素または高密度二酸化炭素と呼ばれている。"
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
