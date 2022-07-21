//
//  SetsTableViewController.swift
//  ListProduct
//
//  Created by Максим Гурков on 21.07.2022.
//

import UIKit

class SetsTableViewController: UITableViewController {
    
    var sets = Sets.forSet()
    
    private var factory: [String] = []
    private var categoru: [Sets] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Выбор производителя Фурнитуры"
        factorySet()
    }
    
    
    private func factorySet() {
        for sets in sets {
            if !factory.contains(sets.factory.rawValue) {
                factory.append(sets.factory.rawValue)
            }
        }
    }
    
    private func getCategoriySet() {
        guard let index = tableView.indexPathForSelectedRow else { return }
        categoru = []
        for sets in sets {
            if sets.factory.rawValue == factory[index.row] {
                categoru.append(sets)
            }
        }
    }
    
    
    
    
    
    

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return factory.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "setsCell", for: indexPath) as! SetsTableViewCell
        let set = factory[indexPath.row]
        cell.imageFactory.image = UIImage(named: set)
        cell.factoryLabel.text = "\(set)"
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
        guard let categoryVC = segue.destination as? CategorySetsTableViewController else { return }
    }
    

}
