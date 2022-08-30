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
    @IBOutlet weak var sumPoPersonLabel: UILabel!
    @IBOutlet weak var selseCountPersonLabel: UILabel!
    
    @IBOutlet weak var sumPoPersonButton: UIButton!
    
    @IBOutlet weak var appendSelseButton: UIButton!
    
    @IBOutlet weak var personSumTextField: UITextField!
    @IBOutlet weak var selsePersonTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\(person.name) \(person.patronymic)"
        sumPoPersonButton.layer.cornerRadius = 8
        appendSelseButton.layer.cornerRadius = 8
        surNamePersonLabel.text = person.surName
        namePersonLabel.text = person.name
        patronymicPersonLabel.text = person.patronymic
        phonePersonLabel.text = person.phone
        addressPersonLabel.text = "г. \(person.town) ул. \(person.strit) \(person.numberHouse)-\(person.body)-\(person.numberFlat)"
        descriptionPersonLabel.text = person.personDescription
        viewColorPerson.layer.cornerRadius = 20
        setupLabel()
        personSumTextField.placeholder = "\(person.sumPo)"
        selsePersonTextField.placeholder = "\(person.salse)"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        sumMaterialLabel.text = "Сумма за материал - \(sumPersonMaterial() - resultSumSelsePerson() - person.sumPo) р."
        sumServicesLabel.text = "Сумма за услуги - \(sumPersonServices()) р."
        sumLabel.text = "Общая сумма договора - \(sumPersonMaterial() - resultSumSelsePerson() + sumPersonServices()) р."
        forRenameButtonAppendPo()
        forRenameButtonAppendSelse()
    }
    
    @IBAction func actionPoPersonButton() {
        forPersonSumPo()
    }
    
    @IBAction func actionSalsePersonButton() {
        forSelsePerson()
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
        sumPoPersonLabel.layer.masksToBounds = true
        sumPoPersonLabel.layer.cornerRadius = 8
        selseCountPersonLabel.layer.masksToBounds = true
        selseCountPersonLabel.layer.cornerRadius = 8
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
    
    private func sumPersonServices() -> Int {
        var sum = 0
        for services in person.basketService {
            sum += services.price
        }
        return sum
    }
    
    private func forSelsePerson() {
        var resultSum = 0
        guard let selse = selsePersonTextField.text, !selse.isEmpty else { return }
        StorageManager.shared.renamePersonSelse(person: person, newValue: Int(selse) ?? 0)
        resultSum = sumPersonMaterial() - resultSumSelsePerson()
        sumMaterialLabel.text = "Сумма за материал - \(resultSum)"
        sumLabel.text = "Общая сумма договора - \(sumPersonMaterial() - resultSumSelsePerson() + sumPersonServices())"
    }
    
    private func forPersonSumPo() {
        var resaltSum = 0
        guard let sum = personSumTextField.text, !sum.isEmpty else { return }
        StorageManager.shared.renamePersonSumPo(person: person, newValue: Int(sum) ?? 0)
        resaltSum = sumPersonMaterial() - resultSumSelsePerson() - person.sumPo
        sumMaterialLabel.text = "Сумма за материал - \(resaltSum) "
    }
    
    private func resultSumSelsePerson() -> Int {
        var result = 0
        result = sumPersonMaterial() / 100 * person.salse
        return result
    }
    
    private func forRenameButtonAppendSelse() {
        if person.salse == 0 {
            appendSelseButton.titleLabel?.text = "Внести"
        } else {
            appendSelseButton.titleLabel?.text = "Изменить"
        }
    }
    
    private func forRenameButtonAppendPo() {
        if person.sumPo == 0 {
            sumPoPersonButton.titleLabel?.text = "Внести"
        } else {
            sumPoPersonButton.titleLabel?.text = "Изменить"
        }
    }
}





