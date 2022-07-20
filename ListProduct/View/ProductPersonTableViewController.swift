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

}
