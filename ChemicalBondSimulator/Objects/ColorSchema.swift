//
//  ColorSchema.swift
//  ChemicalBondSimulator
//
//  Created by KyoheiKato on 5/21/15.
//  Copyright (c) 2015 KyoheiKato. All rights reserved.
//

import Foundation
import UIKit

class ColorSchema {
    var red: Int
    var green: Int
    var blue: Int
    let alpha: Int = 1
    
    init (red: Int, green: Int, blue: Int) {
        self.red = red
        self.green = green
        self.blue = blue
    }

    func getUIColor() -> UIColor {
        return UIColor(red: CGFloat(self.red) / 255.0, green: CGFloat(self.green) / 255.0, blue: CGFloat(self.blue) / 255.0, alpha: CGFloat(self.alpha))
    }
    
    class func getUIColor(red: Int, green: Int, blue: Int, alpha: Int) -> UIColor {
        return UIColor(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: CGFloat(alpha))
    }
}