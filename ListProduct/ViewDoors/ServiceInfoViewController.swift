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
        deleteService()
    }
    
    
    private func saveNewService() {
        let services = Services()
        services.name = servicePerson.nameServices
        services.descriptionService = servicePerson.descriptionServices
        services.price = servicePerson.priceServices
        services.count = servicePerson.countServices
        if person.basketServiceTree.isEmpty {
            alertInfoPerson(name: "Подъем стандарт", service: services)
            StorageManager.shared.saveSerwice(person, service: services)
            countServiceLabel.text = "\(services.count)"
            priceServiceLabel.text = "\(servicePerson.priceServices)"
            return
        }
        if !person.basketServiceTree.isEmpty {
            for service in person.basketServiceTree {
                if service.descriptionService == services.descriptionService {
                    alertInfoPerson(name: "Подъем стандарт", service: services)
                    StorageManager.shared.renameServis(service, services: servicePerson, newValue: 1)
                    countServiceLabel.text = "\(service.count)"
                    priceServiceLabel.text = "\(service.price)"
                    return
                }
            }
            if !person.basketServiceTree.isEmpty {
                for service in person.basketServiceTree {
                    if service.descriptionService != services.descriptionService {
                        alertInfoPerson(name: "Подъем стандарт", service: services)
                        StorageManager.shared.saveSerwice(person, service: services)
                        countServiceLabel.text = "\(services.count)"
                        priceServiceLabel.text = "\(servicePerson.priceServices)"
                        return
                    }
                }
            }
            
        }
    }
    
    private func deleteService() {
        if !person.basketServiceTree.isEmpty {
            for servic in person.basketServiceTree {
                if servic.name == servicePerson.nameServices {
                    if servic.count > 1 {
                        StorageManager.shared.renameService(servic, services: servicePerson, newValue: 1)
                        countServiceLabel.text = "\(servic.count)"
                        priceServiceLabel.text = "\(servic.price)"
                    } else if servic.count == 1 {
                        StorageManager.shared.deleteService(service: servic)
                        countServiceLabel.text = "\(0)"
                        priceServiceLabel.text = "\(0)"
                    }
                }
            }
        }
    }
    
    private func alertInfoPerson(name: String, service: Services) {
        if service.name == name {
            alertInfo()
        }
        
    }
        
    private func countService() {
        for servic in person.basketServiceTree {
            if servic.name == servicePerson.nameServices {
                countServiceLabel.text = "\(servic.count)"
            }
        }
    }
    
    private func priceServiceResult() {
        for servic in person.basketServiceTree {
            if servic.name == servicePerson.nameServices {
                priceServiceLabel.text = "\(servic.price)"
            }
        }
    }
    
    private func alertInfo() {
        let alert = UIAlertController(title: "Внимание!", message: "Вы уверены что выбранный вами вариант подъема подходит?", preferredStyle: .alert)
        let actionAlert = UIAlertAction(title: "OK", style: .default)
        alert.addAction(actionAlert)
        present(alert, animated: true)
    }
    
}
