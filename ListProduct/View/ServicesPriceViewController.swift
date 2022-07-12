//
//  ServicesPriceViewController.swift
//  ListProduct
//
//  Created by Максим Гурков on 11.07.2022.
//

import UIKit

class ServicesPriceViewController: UIViewController {
    
    var person: Person!

    @IBOutlet weak var dismantlingButton: UIButton!
    @IBOutlet weak var catOneButton: UIButton!
    @IBOutlet weak var catTwoButton: UIButton!
    @IBOutlet weak var catThreeBotton: UIButton!
    @IBOutlet weak var installationLockButton: UIButton!
    
    
    @IBOutlet weak var dismantlingInfoButton: UIButton!
    @IBOutlet weak var catOneInfoButton: UIButton!
    @IBOutlet weak var catTwoInfoButton: UIButton!
    @IBOutlet weak var catThreeInfoButton: UIButton!
    @IBOutlet weak var installationLockInfoButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Выбор услуг"
        dismantlingButton.layer.cornerRadius = 8
        catOneButton.layer.cornerRadius = 8
        catTwoButton.layer.cornerRadius = 8
        catThreeBotton.layer.cornerRadius = 8
        installationLockButton.layer.cornerRadius = 8
    }
    
    @IBAction func activeServicesButton(_ sender: UIButton) {
        switch sender {
        case dismantlingButton:
            let servis = Services()
            servis.name = "Демонтаж"
            servis.descriptionService = "Думонтаж межкомнатной двери"
            servis.price = 1500
            servis.count = 1
            StorageManager.shared.saveSerwice(person, service: servis)
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
            alertInfo(value: "Думонтаж двери клиента")
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
