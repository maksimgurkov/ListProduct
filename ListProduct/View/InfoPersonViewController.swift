//
//  InfoPersonViewController.swift
//  MyPriceList
//
//  Created by Максим Гурков on 29.06.2022.
//

import UIKit

class InfoPersonViewController: UIViewController {
    
    var person: Person!
    
    let countCell = 2
    
    
    @IBOutlet weak var viewColorPerson: UIView!
    
    @IBOutlet weak var namePersonLabel: UILabel!
    @IBOutlet weak var surNamePersonLabel: UILabel!
    @IBOutlet weak var patronymicPersonLabel: UILabel!
    @IBOutlet weak var phonePersonLabel: UILabel!
    @IBOutlet weak var addressPersonLabel: UILabel!
    @IBOutlet weak var descriptionPersonLabel: UILabel!
    @IBOutlet weak var sumMaterialLabel: UILabel!
    @IBOutlet weak var sumServicesLabel: UILabel!
    @IBOutlet weak var sumLabel: UILabel!
    
    @IBOutlet weak var personProductLabel: UIButton!
    @IBOutlet weak var personMaterialLabel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\(person.name) \(person.patronymic)"
        personProductLabel.layer.cornerRadius = 8
        personMaterialLabel.layer.cornerRadius = 8
        surNamePersonLabel.text = person.surName
        namePersonLabel.text = person.name
        patronymicPersonLabel.text = person.patronymic
        phonePersonLabel.text = person.phone
        addressPersonLabel.text = "\(person.town) \(person.strit) \(person.numberHouse) \(person.body) \(person.numberFlat)"
        descriptionPersonLabel.text = person.personDescription
        viewColorPerson.layer.cornerRadius = 20
        setupLabel()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        sumMaterialLabel.text = "Сумма за материал - \(sumPersonMaterial()) р."
        sumServicesLabel.text = "Сумма за услуги - \(sumPersonSevices()) р."
        sumLabel.text = "Общая сумма договора - \(sumPersonMaterial() + sumPersonSevices()) р."
    }
        
    private func setupLabel() {
        surNamePersonLabel.layer.masksToBounds = true
        surNamePersonLabel.layer.cornerRadius = 8
        namePersonLabel.layer.masksToBounds = true
        namePersonLabel.layer.cornerRadius = 8
        patronymicPersonLabel.layer.masksToBounds = true
        patronymicPersonLabel.layer.cornerRadius = 8
        phonePersonLabel.layer.masksToBounds = true
        phonePersonLabel.layer.cornerRadius = 8
        addressPersonLabel.layer.masksToBounds = true
        addressPersonLabel.layer.cornerRadius = 8
        descriptionPersonLabel.layer.masksToBounds = true
        descriptionPersonLabel.layer.cornerRadius = 8
        sumMaterialLabel.layer.masksToBounds = true
        sumMaterialLabel.layer.cornerRadius = 8
        sumServicesLabel.layer.masksToBounds = true
        sumServicesLabel.layer.cornerRadius = 8
        sumLabel.layer.masksToBounds = true
        sumLabel.layer.cornerRadius = 8
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let infoDoorVC = segue.destination as? FactoryProductTableViewController {
            infoDoorVC.person = person
        } else if let listVC = segue.destination as? ProductPersonTableViewController {
            listVC.person = person
        } else if let servicesVC = segue.destination as? ServicesPersonTableViewController {
            servicesVC.person = person
        }
    }
    
    @IBAction func saveImageButton(_ sender: Any) {

    }
    
    private func sumPersonMaterial() -> Int {
        var sum = 0
        for door in person.basket {
            sum += door.price
        }
        return sum
    }
    
    private func sumPersonSevices() -> Int {
        var sum = 0
        for services in person.basketService {
            sum += services.price
        }
        return sum
    }
}





