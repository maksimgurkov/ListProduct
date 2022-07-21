//
//  ListDoorsTableViewController.swift
//  MyPriceList
//
//  Created by Максим Гурков on 30.06.2022.
//

import UIKit

class ListDoorsTableViewController: UITableViewController {
    
    var person: Person!
    
    var listDoors: [Door]!
    
    private var filtrateDoors: [Door] = []
    
    private var searchBarIsEmpty: Bool {
        guard let text = searchController.searchBar.text else { return false }
        return text.isEmpty
    }
    private var isFiltering: Bool {
        return searchController.isActive && !searchBarIsEmpty
    }
    
    let searchController = UISearchController(searchResultsController: nil)

    override func viewDidLoad() {
        super.viewDidLoad()
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Введите модель двери"
        navigationItem.searchController = searchController
        definesPresentationContext = true
        
        title = "Выбор дверей"
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if isFiltering {
            return filtrateDoors.count
        } else {
           return listDoors.count
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "doorCell", for: indexPath) as! ImageDoorTableViewCell
        
        var door: Door
        
        if isFiltering {
            door = filtrateDoors[indexPath.row]
        } else {
            door = listDoors[indexPath.row]
        }
        cell.nameDoorLabel.text = door.nameDoor
        cell.doorImage.image = UIImage(named: door.nameDoor)
        
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
        guard let infoVC = segue.destination as? InfoDoorViewController else { return }
        infoVC.persone = person
        var door: Door
        
        if isFiltering {
            door = filtrateDoors[index.row]
        } else {
            door = listDoors[index.row]
        }
        
        infoVC.doorPerson = door
    }
    

}

extension ListDoorsTableViewController: UISearchResultsUpdating {
    
    func updateSearchResults(for searchController: UISearchController) {
        filterContentForSearchText(searchController.searchBar.text!)
    }
    
    private func filterContentForSearchText(_ searchText: String) {
        filtrateDoors = listDoors.filter({ (door: Door) in
            return door.nameDoor.lowercased().contains(searchText.lowercased())
        })
        tableView.reloadData()
    }
    
    
}
