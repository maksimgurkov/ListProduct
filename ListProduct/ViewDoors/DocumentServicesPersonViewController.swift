//
//  DocumentServicesPersonViewController.swift
//  ListProduct
//
//  Created by Максим Гурков on 11.08.2022.
//

import UIKit

class DocumentServicesPersonViewController: UIViewController {
    
    var person: Person!

    @IBOutlet weak var fulNamePersonLabel: UILabel!
    @IBOutlet weak var fulSumPersonLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = " OOO Абада Груп "
        fulNamePersonLabel.text = "Заказчик: \(person.surName) \(person.name) \(person.patronymic)"
        fulSumPersonLabel.text = "\(forSumPerson())"
    }
    
    private func forSumPerson() -> Int {
        var resultSum = 0
        for servic in person.basketService {
            resultSum += servic.price
        }
        return resultSum
    }
    
}

extension DocumentServicesPersonViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return person.basketService.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "materialPersonCell", for: indexPath) as! ServicesTableViewCell
        let service = person.basketService[indexPath.row]
        cell.nameServicesLabel.text = service.name
        cell.descriptionServicesLabel.text = service.descriptionService
        cell.countServicesLabel.text = "\(service.count)"
        cell.priceServicesLabel.text = "\(service.price) руб"
        
        return cell
    }
    
    
}
