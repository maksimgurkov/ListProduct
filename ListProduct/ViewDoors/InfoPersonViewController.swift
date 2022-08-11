//
//  InfoPersonViewController.swift
//  MyPriceList
//
//  Created by Максим Гурков on 29.06.2022.
//

import UIKit

class InfoPersonViewController: UIViewController {
    
    var person: Person!
    
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
    
    @IBOutlet weak var sumPoPersonButton: UIButton!
    @IBOutlet weak var personProductButton: UIButton!
    @IBOutlet weak var personMaterialButton: UIButton!
    
    @IBOutlet weak var personSumTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\(person.name) \(person.patronymic)"
        personProductButton.layer.cornerRadius = 8
        personMaterialButton.layer.cornerRadius = 8
        sumPoPersonButton.layer.cornerRadius = 8
        surNamePersonLabel.text = person.surName
        namePersonLabel.text = person.name
        patronymicPersonLabel.text = person.patronymic
        phonePersonLabel.text = person.phone
        addressPersonLabel.text = "\(person.town) \(person.strit) \(person.numberHouse) \(person.body) \(person.numberFlat)"
        descriptionPersonLabel.text = person.personDescription
        viewColorPerson.layer.cornerRadius = 20
        setupLabel()
        personSumTextField.placeholder = "\(person.sumPo)"
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        sumMaterialLabel.text = "Сумма за материал - \(sumPersonMaterial() - person.sumPo) р."
        sumServicesLabel.text = "Сумма за услуги - \(sumPersonSevices()) р."
        sumLabel.text = "Общая сумма договора - \(sumPersonMaterial() + sumPersonSevices()) р."
    }
    
    @IBAction func actionPoPersonButton() {
        forPersonSumPo()
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
        } else if let servicesVC = segue.destination as? DocumentServicesPersonViewController {
            servicesVC.person = person
        }
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
    
    private func forPersonSumPo() {
        var resaltSum = 0
            guard let sum = personSumTextField.text, !sum.isEmpty else {return}
            StorageManager.shared.renamePerson(person: person, newValue: Int(sum) ?? 0)
            resaltSum = sumPersonMaterial() - person.sumPo
            sumMaterialLabel.text = "Сумма за материал - \(resaltSum) "
    }
}





