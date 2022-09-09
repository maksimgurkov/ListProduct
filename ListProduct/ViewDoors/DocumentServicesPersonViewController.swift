//
//  DocumentServicesPersonViewController.swift
//  ListProduct
//
//  Created by Максим Гурков on 11.08.2022.
//

import UIKit

class DocumentServicesPersonViewController: UIViewController {
    
    var person: Person!
    
    @IBOutlet weak var dataPersonLabel: UILabel!
    @IBOutlet weak var fulNamePersonLabel: UILabel!
    @IBOutlet weak var fulAdresPersonLabel: UILabel!
    @IBOutlet weak var fulSumPersonLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = " OOO Абада Груп "
        dataPersonLabel.text = "Дата: \(forDataDocument())"
        fulNamePersonLabel.text = "Заказчик: \(person.surName) \(person.name) \(person.patronymic)"
        fulAdresPersonLabel.text = "Адрес: г. \(person.town) ул. \(person.strit) \(person.numberHouse)-\(person.body)-\(person.numberFlat)"
        fulSumPersonLabel.text = "\(forSumPerson())"
    }
    
    private func forSumPerson() -> Int {
        var resultSum = 0
        for servic in person.basketServiceTree {
            resultSum += servic.price
        }
        return resultSum
    }
    
    private func forDataDocument() -> String {
        let dataFormater = DateFormatter()
        dataFormater.dateFormat = "dd.MM.yyyy"
        let day = dataFormater.string(from: person.data)
        return day
    }
    
}

extension DocumentServicesPersonViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return person.basketServiceTree.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "materialPersonCell", for: indexPath) as! ServicesTableViewCell
        let service = person.basketServiceTree[indexPath.row]
        cell.nameServicesLabel.text = service.name
        cell.descriptionServicesLabel.text = service.descriptionService
        cell.countServicesLabel.text = "\(service.count)"
        cell.priceServicesLabel.text = "\(service.price) руб"
        
        return cell
    }
    
    
}
