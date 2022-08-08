//
//  ServiceInfoViewController.swift
//  ListProduct
//
//  Created by Максим Гурков on 03.08.2022.
//

import UIKit

class ServiceInfoViewController: UIViewController {
    
    var person: Person!
    var service: Service!
    
    @IBOutlet weak var descriptionServiceLabel: UILabel!
    @IBOutlet weak var nameServiceLabel: UILabel!
    @IBOutlet weak var countServiceLabel: UILabel!
    @IBOutlet weak var priceServiceLabel: UILabel!
    
    @IBOutlet weak var appendServiceButton: UIButton!
    @IBOutlet weak var deleteServiceButton: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = service.nameServices
        appendServiceButton.layer.cornerRadius = 8
        deleteServiceButton.layer.cornerRadius = 8
        nameServiceLabel.text = service.nameServices
        descriptionServiceLabel.text = service.descriptionServices

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
        
//    private func countService() {
//        for service in person.basketService {
//            if service.descriptionService == "Думонтаж межкомнатной двери" {
//                countDismantlingSeviceLabel.text = "\(service.count)"
//            } else if service.descriptionService == "Монтаж первой категории" {
//                countCatOneLabel.text = "\(service.count)"
//            } else if service.descriptionService == "Монтаж второй категории" {
//                countCatTwoLabel.text = "\(service.count)"
//            } else if service.descriptionService == "Монтаж третьей категории" {
//                countCatThreeLabel.text = "\(service.count)"
//            } else if service.descriptionService == "Врезка и установка механизма" {
//                countInstallationLockLabel.text = "\(service.count)"
//            }
//        }
//    }
//    
}
