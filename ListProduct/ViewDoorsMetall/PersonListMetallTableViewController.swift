//
//  PersonListMetallTableViewController.swift
//  ListProduct
//
//  Created by Максим Гурков on 05.09.2022.
//

import UIKit
import RealmSwift

class PersonListMetallTableViewController: UITableViewController {
    
    private var personMetall: Results<PersonMetall>!
    
    private let flag = true

    override func viewDidLoad() {
        super.viewDidLoad()
        personMetall = StorageManager.shared.realm.objects(PersonMetall.self)

    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    private func personDateInfo(person: PersonMetall) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy"
        let day = dateFormatter.string(from: person.data)
        return day
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if personMetall.count != 0 {
            return personMetall.count
        } else {
            return 0
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "metallCell", for: indexPath) as! MetallDoorTableViewCell
        let person = personMetall[indexPath.row]
        cell.fulNamePersonMetallLabel.text = "\(person.name) \(person.patronymic)"
        cell.surNamePersonMetall.text = person.surName
        cell.fulAdresPersonMetallLabel.text = "г. \(person.town) ул. \(person.strit) \(person.numberHouse)-\(person.body)-\(person.numberFlat)"
        cell.dataPersonMetallLabel.text = personDateInfo(person: person)
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
        guard let infoVC = segue.destination as? InfoPersonViewController else { return }
        
        infoVC.personMetall = personMetall[index.row]
        infoVC.flag = flag
    }
    

}
