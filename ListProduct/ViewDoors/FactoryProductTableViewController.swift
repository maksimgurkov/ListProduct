//
//  FactoryProductTableViewController.swift
//  MyPriceList
//
//  Created by Максим Гурков on 29.06.2022.
//

import UIKit

class FactoryProductTableViewController: UITableViewController {
    
    var person: Person!
    
    var doors = Door.forDoors()
    
    private var factoryDoor: [String] = []
    private var listDoors: [Door] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        factoryDoorList()
        title = "Выбор производителя Дверей"
    }
    
    
    private func factoryDoorList() {
        for door in doors {
            if !factoryDoor.contains(door.factory.rawValue) {
                factoryDoor.append(door.factory.rawValue)
            }
        }
    }
    
    private func getMaterialDoors() {
        guard let index = tableView.indexPathForSelectedRow else { return }
        listDoors = []
        for door in doors {
            if door.factory.rawValue == factoryDoor[index.row] {
                listDoors.append(door)
            }
        }
    }
    
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let materialVC = segue.destination as? MaterialDoorsTableViewController else { return }
        getMaterialDoors()
        materialVC.materialDoor = listDoors
        materialVC.person = person
    }
    
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return factoryDoor.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "productCell", for: indexPath) as! FactoryDoorsTableViewCell
        let cat = factoryDoor[indexPath.row]
        cell.nameFactoryDoorsLabel.text = cat
        cell.factoryDoorsImage.image = UIImage(named: cat)
        cell.descriptionDoorsLabel.text = "Российчкий производитель"
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

  

}
