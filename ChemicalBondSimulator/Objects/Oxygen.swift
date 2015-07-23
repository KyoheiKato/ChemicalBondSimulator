//
// Created by KyoheiKato on 5/21/15.
// Copyright (c) 2015 KyoheiKato. All rights reserved.
//

import Foundation
import UIKit
import SceneKit

class Oxygen: Atom {
    required init() {
        super.init()
        self.name = "O"
        self.size = 0.4
        color = ColorSchema(red: 244, green: 67, blue: 54)
    }    
}
