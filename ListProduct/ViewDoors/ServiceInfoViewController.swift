//
//  ServiceInfoViewController.swift
//  ListProduct
//
//  Created by Максим Гурков on 03.08.2022.
//

import UIKit

class ServiceInfoViewController: UIViewController {
    
    var person: Person!
    var servicePerson: Service!
    
    @IBOutlet weak var descriptionServiceLabel: UILabel!
    @IBOutlet weak var nameServiceLabel: UILabel!
    @IBOutlet weak var countServiceLabel: UILabel!
    @IBOutlet weak var priceServiceLabel: UILabel!
    
    @IBOutlet weak var appendServiceButton: UIButton!
    @IBOutlet weak var deleteServiceButton: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = servicePerson.nameServices
        countService()
        priceServiceResult()
        appendServiceButton.layer.cornerRadius = 8
        deleteServiceButton.layer.cornerRadius = 8
        nameServiceLabel.text = servicePerson.nameServices
        descriptionServiceLabel.text = servicePerson.descriptionServices

    }
    
    @IBAction func actionAppandServiceButton() {
        saveNewService()
    }
    
    @IBAction func actionDeleteServiceButton() {
        
    }
    
    
    private func saveNewService() {
        let services = Services()
        services.name = servicePerson.nameServices
        services.descriptionService = servicePerson.descriptionServices
        services.price = servicePerson.priceServices
        services.count = servicePerson.countServices
        if person.basketService.isEmpty {
            StorageManager.shared.saveSerwice(person, service: services)
            countServiceLabel.text = "\(services.count)"
            priceServiceLabel.text = "\(servicePerson.priceServices)"
            return
        }
        if !person.basketService.isEmpty {
            for service in person.basketService {
                if service.descriptionService == services.descriptionService {
                    StorageManager.shared.renameServis(service, services: servicePerson, newValue: 1)
                    countServiceLabel.text = "\(service.count)"
                    priceServiceLabel.text = "\(service.price)"
                    return
                }
            }
            if !person.basketService.isEmpty {
                for service in person.basketService {
                    if service.descriptionService != services.descriptionService {
                        StorageManager.shared.saveSerwice(person, service: services)
                        countServiceLabel.text = "\(services.count)"
                        priceServiceLabel.text = "\(servicePerson.priceServices)"
                        return
                    }
                }
            }
            
        }
    }
        
    private func countService() {
        for servic in person.basketService {
            if servic.name == servicePerson.nameServices {
                countServiceLabel.text = "\(servic.count)"
            }
        }
    }
    
    private func priceServiceResult() {
        for servic in person.basketService {
            if servic.name == servicePerson.nameServices {
                priceServiceLabel.text = "\(servic.price)"
            }
        }
    }
    
}
