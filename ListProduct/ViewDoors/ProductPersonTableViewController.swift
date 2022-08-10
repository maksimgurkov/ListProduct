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
    @IBOutlet weak var sumPersonLabel: UILabel!
    @IBOutlet weak var sumPoPersonLabel: UILabel!
    @IBOutlet weak var fulSumPersonLabel: UILabel!
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\(person.name) \(person.patronymic)"
        fulNamePersonLabel.text = "\(person.surName) \(person.name) \(person.patronymic)"
        fulAdresPersonLabel.text = "\(person.town) \(person.strit) \(person.numberHouse) \(person.body) \(person.numberFlat)"
        sumPersonLabel.text = "\(sumPerson())"
        sumPoPersonLabel.text = "\(person.sumPo)"
        fulSumPersonLabel.text = "\(fulSumPersonProduct())"
    }
    
    private func sumPerson() -> Int {
        var resultSum = 0
        for product in person.basket {
            resultSum += product.price
        }
        return resultSum
    }
    
    private func fulSumPersonProduct() -> Int {
        var resultSum = 0
        resultSum = sumPerson() - person.sumPo
        return resultSum
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
