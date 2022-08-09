//
//  CategorySetsTableViewController.swift
//  ListProduct
//
//  Created by Максим Гурков on 21.07.2022.
//

import UIKit
import RealmSwift

class CategorySetsTableViewController: UITableViewController {
    
    var categorySet: [Sets]!
    var person: Person!
    
    private var catefory: [String] = []
    private var listProductSet: [Sets] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        forCategoriaSets()
        title = "Выбор категории"
    }
    
    private func forCategoriaSets() {
        for categoria in categorySet {
            if !catefory.contains(categoria.category.rawValue) {
                catefory.append(categoria.category.rawValue)
            }
        }
    }
    
    private func forProductSets() {
        guard let index = tableView.indexPathForSelectedRow else { return }
        listProductSet = []
        for product in categorySet {
            if product.category.rawValue == catefory[index.row] {
                listProductSet.append(product)
            }
        }
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return catefory.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "categorySets", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let category = catefory[indexPath.row]
        content.text = "\(category)"
        cell.contentConfiguration = content
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
        guard let productSetVC = segue.destination as? ProductSetTableViewController else { return }
        forProductSets()
        productSetVC.productSets = listProductSet
        productSetVC.person = person

    }
    

}
