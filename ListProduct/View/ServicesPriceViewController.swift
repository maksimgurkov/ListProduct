//
//  ServicesPriceViewController.swift
//  ListProduct
//
//  Created by Максим Гурков on 11.07.2022.
//

import UIKit
import RealmSwift

class ServicesPriceViewController: UIViewController {
    
    var person: Person!

    @IBOutlet weak var dismantlingButton: UIButton!
    @IBOutlet weak var catOneButton: UIButton!
    @IBOutlet weak var catTwoButton: UIButton!
    @IBOutlet weak var catThreeBotton: UIButton!
    @IBOutlet weak var installationLockButton: UIButton!
    
    @IBOutlet weak var countSeviceLabel: UILabel!
    
    
    @IBOutlet weak var dismantlingInfoButton: UIButton!
    @IBOutlet weak var catOneInfoButton: UIButton!
    @IBOutlet weak var catTwoInfoButton: UIButton!
    @IBOutlet weak var catThreeInfoButton: UIButton!
    @IBOutlet weak var installationLockInfoButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Выбор услуг"
        countService(labelCount: countSeviceLabel)
        dismantlingButton.layer.cornerRadius = 8
        catOneButton.layer.cornerRadius = 8
        catTwoButton.layer.cornerRadius = 8
        catThreeBotton.layer.cornerRadius = 8
        installationLockButton.layer.cornerRadius = 8
    }
    
    private func saveNewSerwice(name: String, descriptionService: String, price: Int, count: Int, labelCount: UILabel) {
        let services = Services()
        services.name = name
        services.descriptionService = descriptionService
        services.price = price
        services.count = count
        if person.basketService.isEmpty {
            StorageManager.shared.saveSerwice(person, service: services)
            labelCount.text = "\(services.count)"
        } else if !person.basketService.isEmpty {
            for service in person.basketService {
                if services.descriptionService == service.descriptionService {
                    StorageManager.shared.renameServis(service, newValue: 1)
                    labelCount.text = "\(service.count)"
                }
            }
        }
        
    }
    
    private func countService(labelCount: UILabel) {
        if person.basketService.isEmpty {
            countSeviceLabel.text = "0"
        } else if !person.basketService.isEmpty {
            for service in person.basketService {
                if service.descriptionService == "Думонтаж межкомнатной двери" {
                    labelCount.text = "\(service.count)"
                }
            }
        }
    }
    
    @IBAction func activeServicesButton(_ sender: UIButton) {
        switch sender {
        case dismantlingButton:
            saveNewSerwice(name: "Демонтаж", descriptionService: "Думонтаж межкомнатной двери", price: 1500, count: 1, labelCount: countSeviceLabel)
        case catOneButton:
            let servis = Services()
            servis.name = "Монтаж"
            servis.descriptionService = "Монтаж первой категории"
            servis.price = 7500
            servis.count = 1
            StorageManager.shared.saveSerwice(person, service: servis)
        case catTwoButton:
            let servis = Services()
            servis.name = "Монтаж"
            servis.descriptionService = "Монтаж второй категории"
            servis.price = 8500
            servis.count = 1
            StorageManager.shared.saveSerwice(person, service: servis)
        case catThreeBotton:
            let servis = Services()
            servis.name = "Монтаж"
            servis.descriptionService = "Монтаж третьей категории"
            servis.price = 9500
            servis.count = 1
            StorageManager.shared.saveSerwice(person, service: servis)
        case installationLockButton:
            let servis = Services()
            servis.name = "Врезка замка"
            servis.descriptionService = "Врезка и установка механизма"
            servis.price = 9500
            servis.count = 1
            StorageManager.shared.saveSerwice(person, service: servis)
        default:
            break
        }
    }
    
    @IBAction func activeInfoButton(_ sender: UIButton) {
        switch sender {
        case dismantlingInfoButton:
            alertInfo(value: "Думонтаж двери клиента, подготовка проема к монтажу. Цена: 1500")
        case catOneInfoButton:
            alertInfo(value: "Монтаж первой категории (Одностворчатая) входит: короба, навес полотна и установка наличников")
        case catTwoInfoButton:
            alertInfo(value: "Монтаж второй категории (Двестворчатая) входит: установка короба, навес полотна и установка наличников")
        case catThreeInfoButton:
            alertInfo(value: "Монтаж третьей категории (раздвижная) входит: монтаж механизма, навес полотна, установка доборов и установка наличников")
        case installationLockInfoButton:
            alertInfo(value: "Врезка замка и его установка и монтаж ручек")
        default:
            break
        }
    }
    
    private func alertInfo(value: String) {
        let alert = UIAlertController(
            title: "Информация",
            message: value,
            preferredStyle: .alert)
        let actionAlert = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(actionAlert)
        present(alert, animated: true)
    }
    
    
    
    // MARK: - Navigation

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//
//    }
    

}
