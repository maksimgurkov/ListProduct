//
//  PersonsTableViewController.swift
//  MyPriceList
//
//  Created by Максим Гурков on 28.06.2022.
//

import UIKit
import RealmSwift

class PersonsTableViewController: UITableViewController {
    
    private var persons: Results<Person>!

    override func viewDidLoad() {
        persons = StorageManager.shared.realm.objects(Person.self)
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let index = tableView.indexPathForSelectedRow else { return }
        guard let InfoPersonVC = segue.destination as? InfoPersonViewController else { return }
        InfoPersonVC.person = persons[index.row]
    }
    
    private func dateFormat(_ person: Person) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy"
        let weekDay = dateFormatter.string(from: person.data)
        return weekDay
    }
}
// MARK: - Table view data source
extension PersonsTableViewController {
   
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if persons.count != 0 {
            return persons.count
        } else {
            return 0
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath) as! PersonCellTableViewCell
        let person = persons[indexPath.row]
        cell.fulNamePersonLabel.text = "\(person.name) \(person.patronymic)"
        cell.surNamePersonLabel.text = person.surName
        cell.fulAddressPersonLabel.text = "г. \(person.town) ул. \(person.strit) \(person.numberHouse)-\(person.body)-\(person.numberFlat)"
        cell.datePersonLabel.text = dateFormat(person)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        let person = persons[indexPath.row]
        
        if editingStyle == .delete {
            StorageManager.shared.delete(person)
        }
        tableView.deleteRows(at: [indexPath], with: .automatic)
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
