//
//  TransactionsViewController.swift
//  cap1-ses-hacakthon-final
//
//  Created by Reza Madhavan on 5/23/19.
//  Copyright © 2019 Reza Madhavan. All rights reserved.
//

import UIKit

class TransactionsViewController: UITableViewController {
    
    //@IBOutlet weak var transactionsTable: UITableView!
    
    var transactions = [Transaction]()
    var transactionCellIdentifier = "transactionCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        //tableView.reloadData()
    }
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return transactions.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: transactionCellIdentifier, for: indexPath)
        
        cell.textLabel?.text = transactions[indexPath.row].vendor + "          " + String(transactions[indexPath.row].total)
        
        
        
        // Configure the cell...
        
        return cell
    }
    
    
    
    
    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }

}
