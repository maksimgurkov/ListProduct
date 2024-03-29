//
//  ProductSetTableViewController.swift
//  ListProduct
//
//  Created by Максим Гурков on 21.07.2022.
//

import UIKit
import SwiftUI

class ProductSetTableViewController: UITableViewController {
    
    var productSets: [Sets]!
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Выбор фурнитуры"
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productSets.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "productSetCell", for: indexPath) as! SetsProductTableViewCell
        let product = productSets[indexPath.row]
        cell.imageProductSet.image = UIImage(named: product.name)
        cell.nameProductSetLabel.text = "\(product.name)"
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let index = tableView.indexPathForSelectedRow else { return }
        guard let infoProductVC = segue.destination as? InfoProductSetViewController else { return }
        infoProductVC.infoProduct = productSets[index.row]
        infoProductVC.person = person
    }
    

}
