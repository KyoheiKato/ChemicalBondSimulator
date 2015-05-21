//
// Created by KyoheiKato on 5/21/15.
// Copyright (c) 2015 KyoheiKato. All rights reserved.
//

import Foundation
import UIKit

class ChemicalBondTableViewController: UITableViewController {

    @IBOutlet var chemicalBondList: UITableView!
    
    var molecules: [Molecule] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        super.title = NSBundle.mainBundle().objectForInfoDictionaryKey("CFBundleName") as! String?
        
        chemicalBondList.delegate = self
        chemicalBondList.dataSource = self
        
        molecules.append(Water())
        molecules.append(CarbonDioxide())
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return molecules.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let tableViewCell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Cell")
        tableViewCell.textLabel?.text = molecules[indexPath.row].name
        return tableViewCell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        performSegueWithIdentifier("toSimulateViewController", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var simulateViewController: SimulateViewController = segue.destinationViewController as! SimulateViewController
        var indexPath = chemicalBondList.indexPathForSelectedRow()!
        simulateViewController.molecule = molecules[indexPath.row]
    }
}
