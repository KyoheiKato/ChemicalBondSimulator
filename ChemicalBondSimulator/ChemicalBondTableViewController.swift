//
// Created by KyoheiKato on 5/21/15.
// Copyright (c) 2015 KyoheiKato. All rights reserved.
//

import Foundation
import UIKit

class ChemicalBondTableViewController: UITableViewController {

    @IBOutlet var chemicalBondList: UITableView!
    
    var molecules: [Molecule] = []
    var senderMolecule: Molecule? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        chemicalBondList.delegate = self
        chemicalBondList.dataSource = self
        
        molecules.append(Water())
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return molecules.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let tableViewCell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Cell")
        senderMolecule = molecules[indexPath.row]
        tableViewCell.textLabel?.text = senderMolecule!.name
        return tableViewCell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        performSegueWithIdentifier("toSimulateViewController", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var simulateViewController: SimulateViewController = segue.destinationViewController as! SimulateViewController
        simulateViewController.molecule = senderMolecule
    }
}
