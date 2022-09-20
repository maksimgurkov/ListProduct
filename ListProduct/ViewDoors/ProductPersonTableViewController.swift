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
    @IBOutlet weak var dataDocumentPersonLabel: UILabel!
    @IBOutlet weak var infoResultSumPersonLabel: UILabel!
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "ООО Абада Груп"
        fulNamePersonLabel.text = "\(person.surName) \(person.name) \(person.patronymic)"
        fulAdresPersonLabel.text = "г. \(person.town) ул. \(person.strit) \(person.numberHouse)-\(person.body)-\(person.numberFlat)"
        sumPersonLabel.text = "\(sumPerson() - forResultSelse())"
        sumPoPersonLabel.text = "\(person.sumPo)"
        fulSumPersonLabel.text = "\(fulSumPersonProduct())"
        dataDocumentPersonLabel.text = forDataDocument()
        infoResultSumPersonLabel.text = forInfoResultSumPerson()
    }
    
    private func sumPerson() -> Int {
        var resultSum = 0
        for product in person.basketDoorTree {
            resultSum += product.price
        }
        return resultSum
    }
    
    private func forResultSelse() -> Int {
        let result = sumPerson() / 100 * person.salse
        return result
    }
    
    private func fulSumPersonProduct() -> Int {
        var resultSum = 0
        resultSum = sumPerson() - forResultSelse() - person.sumPo
        return resultSum
    }
    
    private func forDataDocument() -> String {
        let dateFormater = DateFormatter()
        dateFormater.dateFormat = "dd.MM.yyyy"
        let day = dateFormater.string(from: person.data)
        return day
    }
    
    private func forInfoResultSumPerson() -> String {
        var info = ""
        if person.salse == 0 {
            info = "Итого к оплате"
        } else {
            info = "Итого к оплате с учетом скидки \(person.salse) % Сумма скидки - \(forResultSelse()) р."
        }
        return info
    }
    
    // MARK: - Table view data source
}

extension ProductPersonTableViewController: UITableViewDataSource {

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return person.basketDoorTree.count
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "productPersonCell", for: indexPath) as! BascetDoorsTableViewCell
        let product = person.basketDoorTree[indexPath.row]
        cell.factoryDoorLabel.text = product.factory
        cell.materialDoorLabel.text = product.material
        cell.nameDoorLabel.text = product.dopNameMaterial
        cell.dimensionsDoorLabel.text = product.dimensions
        cell.countDoorLabel.text = "\(product.countMaterial)"
        cell.priceDoorLabel.text = "\(product.price)"
        return cell
    }

}
