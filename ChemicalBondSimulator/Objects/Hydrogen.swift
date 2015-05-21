//
// Created by KyoheiKato on 5/20/15.
// Copyright (c) 2015 KyoheiKato. All rights reserved.
//

import Foundation
import UIKit
import SceneKit

class Hydrogen: Atom {
    init () {
        super.init(name: "水素", size: 0.2)
        color = ColorSchema(red: 3, green: 169, blue: 244)
    }
}
