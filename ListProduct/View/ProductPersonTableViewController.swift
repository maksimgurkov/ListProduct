//
//  ProductPersonTableViewController.swift
//  ListProduct
//
//  Created by Максим Гурков on 08.07.2022.
//

import UIKit

class ProductPersonTableViewController: UIViewController {
    
    var person: Person!
    
    @IBOutlet weak var fulNamePersonLabel: UILabel!
    @IBOutlet weak var fulAdresPersonLabel: UILabel!
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\(person.name) \(person.patronymic)"
        fulNamePersonLabel.text = "\(person.surName) \(person.name) \(person.patronymic)"
        fulAdresPersonLabel.text = "\(person.town) \(person.strit) \(person.numberHouse) \(person.body) \(person.numberFlat)"
    }
    
    // MARK: - Table view data source

}
extension ProductPersonTableViewController: UITableViewDataSource {

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return person.basket.count
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "productPersonCell", for: indexPath) as! BascetDoorsTableViewCell
        let product = person.basket[indexPath.row]
        cell.factoryDoorLabel.text = product.factory
        cell.materialDoorLabel.text = product.material
        cell.nameDoorLabel.text = product.nameDoor
        cell.dimensionsDoorLabel.text = product.dimensions
        cell.countDoorLabel.text = "\(product.countDoors)"
        cell.priceDoorLabel.text = "\(product.price)"
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
