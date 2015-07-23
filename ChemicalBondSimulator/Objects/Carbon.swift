//
// Created by KyoheiKato on 5/21/15.
// Copyright (c) 2015 KyoheiKato. All rights reserved.
//

import Foundation
import UIKit
import SceneKit

class Carbon: Atom {
    required init() {
        super.init()
        self.name = "C"
        self.size = 0.5
        color = ColorSchema(red: 189, green: 189, blue: 189)
    }
}
