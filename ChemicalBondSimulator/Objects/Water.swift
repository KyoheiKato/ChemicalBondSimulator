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
        self.description = "水（みず）とは、次のいずれかの物質を表す用語である。\n・化学式 H2O で表される、水素と酸素の化合物。\n・湯と対比して用いられている語。温度が低く、かつ凝固して氷にはなっていない水。\n・液状のもの全般。\n・元素としての水（18世紀までの文献に現れる用法）。水は人類にとって最もありふれた液体であり、基本的な物質である。また、人が生命を維持するには必要不可欠であり、さまざまな産業活動にも不可欠の物質である。\n古代ギリシャではタレスが「万物のアルケーは水」とし、エンペドクレスは四大元素のひとつで基本的な元素として水を挙げた。古代インドでも五大のひとつとされ、中国の五行説でも基本要素のひとつと見なされている。18世紀の後半まで、洋の東西を問わず人々はそうした理解をしていた。それが変わったのは、わずか200年ほど前のことであり、19世紀前半に、ドルトン、ゲイリュサック、フンボルトらの実験が行われ、アボガドロによって分子説が唱えられたことによって、H2Oで表すことができる水素と酸素の化合物と理解されるようになった。\n常温常圧では液体で、透明ではあるが、ごくわずかに青緑色を呈している（ただし、重水は無色である）。また無臭である。 日常生活で人が用いるコップ1杯や風呂桶程度の量の水にはほとんど色がないので、水の色は「無色透明」と形容される。詩的な表現では、何かの色に染まっていないことの象徴として水が用いられることがある[2]。しかし、海、湖、ダム、大きな川など、厚い層を成して存在する大量の水の色は青色に見える。このような状態で見える水の色を、日本語ではそのまま水色と呼んでいる。\n化学が発展してからは化学式 H2O で表され、水素原子と酸素原子は共有結合で結びついている、と理解されている。（→#化学的性質）また水は、かつて1kgや1calの単位の基準として用いられた。\nすべての既知の生命体にとって、水は不可欠な物質である。生物体を構成する物質で、最も多くを占めるのが水である。核や細胞質で最も多い物質でもあり、細胞内の物質代謝の媒体としても利用されている。通常、質量にして生物体の70〜80%が水によって占められている。人体も60〜70%程度が水である。"
        let oxygens = Oxygen.generateAtoms(1) as [Oxygen]
        let hydrogens = Hydrogen.generateAtoms(2) as [Hydrogen]
        oxygens[0].position = [0.0, 0.5, 0.0]
        hydrogens[0].position = [-1.0, 0.0, 0.0]
        hydrogens[1].position = [1.0, 0.0, 0.0]
        oxygens[0].neighborAtoms = [1: hydrogens]
        
        appendAtoms(oxygens)
        appendAtoms(hydrogens)
        appendBonds()
        initLabelPosition()
    }
}