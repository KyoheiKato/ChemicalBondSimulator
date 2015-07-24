//
//  MoleculeDetail.swift
//  ChemicalBondSimulator
//
//  Created by KyoheiKato on 7/25/15.
//  Copyright (c) 2015 KyoheiKato. All rights reserved.
//

import Foundation
import UIKit

class MoleculeDetailViewController: UIViewController {
    
    @IBOutlet weak var nameText: UITextView!
    @IBOutlet weak var descriptionText: UITextView!
    
    var molecule: Molecule?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initTextViews()
    }
    
    func initTextViews() {
        nameText.text = molecule!.name
        descriptionText.text = molecule!.description
    }
}
