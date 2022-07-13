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
    
    @IBOutlet weak var countDismantlingSeviceLabel: UILabel!
    @IBOutlet weak var countCatOneLabel: UILabel!
    @IBOutlet weak var countCatTwoLabel: UILabel!
    @IBOutlet weak var countCatThreeLabel: UILabel!
    @IBOutlet weak var countInstallationLockLabel: UILabel!
    
    
    @IBOutlet weak var dismantlingInfoButton: UIButton!
    @IBOutlet weak var catOneInfoButton: UIButton!
    @IBOutlet weak var catTwoInfoButton: UIButton!
    @IBOutlet weak var catThreeInfoButton: UIButton!
    @IBOutlet weak var installationLockInfoButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Выбор услуг"

//        countDismantlingService()
//        countCatOneService()
//        countCatTwoService()
//        countCatThreeService()
//        coutInstallationLockService()
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
            return
        }
        if !person.basketService.isEmpty {
            for service in person.basketService {
                if service.descriptionService == services.descriptionService {
                    StorageManager.shared.renameServis(service, newValue: 1)
                    labelCount.text = "\(service.count)"
                    return
                }
            }
        if !person.basketService.isEmpty {
            for service in person.basketService {
                if service.descriptionService != services.descriptionService {
                    StorageManager.shared.saveSerwice(person, service: services)
                    labelCount.text = "\(service.count)"
                    return
                }
            }
        }
                

            
        
//            else if !person.basketService.isEmpty {
//            for service in person.basketService {
//                if service.descriptionService != services.descriptionService {
//                    StorageManager.shared.saveSerwice(person, service: services)
//                    print("не равно")
//                } else {
//                    StorageManager.shared.renameServis(service, newValue: 1)
//                    labelCount.text = "\(service.count)"
//                    print("равны")
//
//                }
            
        }
    }
        
    private func countDismantlingService() {
        if person.basketService.isEmpty {
            countDismantlingSeviceLabel.text = "0"
        } else if !person.basketService.isEmpty {
            for service in person.basketService {
                if service.descriptionService == "Думонтаж межкомнатной двери" {
                    countDismantlingSeviceLabel.text = "\(service.count)"
                } else {
                    countDismantlingSeviceLabel.text = "0"
                }
            }
        }
        for service in person.basketService {
            if service.descriptionService == "Думонтаж межкомнатной двери" {
                countDismantlingSeviceLabel.text = "\(service.count)"
            } else {
                countDismantlingSeviceLabel.text = "0"
            }
        }
    }
    
    private func countCatOneService() {
        for service in person.basketService {
            if service.descriptionService == "Монтаж первой категории" {
                countCatOneLabel.text = "\(service.count)"
            } else {
                countCatOneLabel.text = "0"
            }
        }
    }
    
    private func countCatTwoService() {
        for service in person.basketService {
            if service.descriptionService == "Монтаж второй категории" {
                countCatTwoLabel.text = "\(service.count)"
            } else {
                countCatTwoLabel.text = "0"
            }
        }
    }
    
    private func countCatThreeService() {
        for service in person.basketService {
            if service.descriptionService == "Монтаж третьей категории" {
                countCatThreeLabel.text = "\(service.count)"
            } else {
                countCatThreeLabel.text = "0"
            }
        }
    }
    
    private func coutInstallationLockService() {
        for service in person.basketService {
            if service.descriptionService == "Врезка и установка механизма" {
                countInstallationLockLabel.text = "\(service.count)"
            } else {
                countInstallationLockLabel.text = "0"
            }
        }
    }
    
    @IBAction func activeServicesButton(_ sender: UIButton) {
        switch sender {
        case dismantlingButton:
            saveNewSerwice(name: "Демонтаж", descriptionService: "Думонтаж межкомнатной двери", price: 1500, count: 1, labelCount: countDismantlingSeviceLabel)
        case catOneButton:
            saveNewSerwice(name: "Монтаж", descriptionService: "Монтаж первой категории", price: 6000, count: 1, labelCount: countCatOneLabel)
        case catTwoButton:
            saveNewSerwice(name: "Монтаж", descriptionService: "Монтаж второй категории", price: 7000, count: 1, labelCount: countCatTwoLabel)
        case catThreeBotton:
            saveNewSerwice(name: "Монтаж", descriptionService: "Монтаж третьей категории", price: 8000, count: 1, labelCount: countCatThreeLabel)
        case installationLockButton:
            saveNewSerwice(name: "Врезка замка", descriptionService: "Врезка и установка механизма", price: 2500, count: 1, labelCount: countInstallationLockLabel)
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
