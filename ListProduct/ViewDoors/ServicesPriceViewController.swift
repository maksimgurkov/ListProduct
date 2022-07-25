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
        countService()
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
                        labelCount.text = "\(services.count)"
                        return
                    }
                }
            }
            
        }
    }
        
    private func countService() {
        for service in person.basketService {
            if service.descriptionService == "Думонтаж межкомнатной двери" {
                countDismantlingSeviceLabel.text = "\(service.count)"
            } else if service.descriptionService == "Монтаж первой категории" {
                countCatOneLabel.text = "\(service.count)"
            } else if service.descriptionService == "Монтаж второй категории" {
                countCatTwoLabel.text = "\(service.count)"
            } else if service.descriptionService == "Монтаж третьей категории" {
                countCatThreeLabel.text = "\(service.count)"
            } else if service.descriptionService == "Врезка и установка механизма" {
                countInstallationLockLabel.text = "\(service.count)"
            }
        }
    }
    
    
    @IBAction func activeServicesButton(_ sender: UIButton) {
        switch sender {
        case dismantlingButton:
            saveNewSerwice(name: "Демонтаж",
                           descriptionService: "Думонтаж межкомнатной двери",
                           price: 1400,
                           count: 1,
                           labelCount: countDismantlingSeviceLabel)
        case catOneButton:
            saveNewSerwice(name: "Монтаж",
                           descriptionService: "Монтаж первой категории",
                           price: 7350,
                           count: 1,
                           labelCount: countCatOneLabel)
        case catTwoButton:
            saveNewSerwice(name: "Монтаж",
                           descriptionService: "Монтаж второй категории",
                           price: 9120,
                           count: 1,
                           labelCount: countCatTwoLabel)
        case catThreeBotton:
            saveNewSerwice(name: "Монтаж",
                           descriptionService: "Монтаж третьей категории",
                           price: 10900,
                           count: 1,
                           labelCount: countCatThreeLabel)
        case installationLockButton:
            saveNewSerwice(name: "Врезка замка",
                           descriptionService: "Врезка и установка механизма",
                           price: 2700,
                           count: 1,
                           labelCount: countInstallationLockLabel)
        default:
            break
        }
    }
    
    @IBAction func activeInfoButton(_ sender: UIButton) {
        switch sender {
        case dismantlingInfoButton:
            alertInfo(value: "Думонтаж двери клиента, подготовка проема к монтажу. Цена: 1400")
        case catOneInfoButton:
            alertInfo(value: "Монтаж первой категории (Одностворчатая) входит: короба, навес полотна и установка наличников Цена: 7350")
        case catTwoInfoButton:
            alertInfo(value: "Монтаж второй категории (Двестворчатая) входит: установка короба, навес полотна и установка наличников Цена: 9120")
        case catThreeInfoButton:
            alertInfo(value: "Монтаж третьей категории (раздвижная) входит: монтаж механизма, навес полотна, установка доборов и установка наличников Цена: 10900")
        case installationLockInfoButton:
            alertInfo(value: "Врезка замка и его установка и монтаж ручек Цена: 2700")
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
