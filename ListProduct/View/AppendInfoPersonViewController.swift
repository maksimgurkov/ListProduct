//
//  AppendInfoPersonViewController.swift
//  MyPriceList
//
//  Created by Максим Гурков on 28.06.2022.
//

import UIKit
import RealmSwift

class AppendInfoPersonViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var surNameTextField: UITextField!
    @IBOutlet weak var patronymicPersonTextField: UITextField!
    @IBOutlet weak var phonePersonTextField: UITextField!
    @IBOutlet weak var townPersonTextField: UITextField!
    @IBOutlet weak var stritPersonTexttField: UITextField!
    @IBOutlet weak var numberHousePersonTextField: UITextField!
    @IBOutlet weak var bodyPersonTextField: UITextField!
    @IBOutlet weak var numberFlatPersonTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    
    @IBOutlet weak var savePersonButton: UIButton!
    
    private var person: Results<Person>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        savePersonButton.layer.cornerRadius = 10
    }
    
    @IBAction func closeViewButton(_ sender: Any) {
        dismiss(animated: true)
    }
    

    @IBAction func savePersonButtonAction() {
        let person = Person()
        guard let name = nameTextField.text, !name.isEmpty else { return }
        guard let surName = surNameTextField.text, !surName.isEmpty else { return }
        guard let patronymic = patronymicPersonTextField.text, !patronymic.isEmpty else {return}
        guard let phone = phonePersonTextField.text, !phone.isEmpty else { return }
        guard let town = townPersonTextField.text, !town.isEmpty else { return }
        guard let strit = stritPersonTexttField.text, !strit.isEmpty else { return }
        guard let numberHous = numberHousePersonTextField.text, !numberHous.isEmpty else { return }
        guard let body = bodyPersonTextField.text, !body.isEmpty else { return }
        guard let numberFlat = numberFlatPersonTextField.text, !numberFlat.isEmpty else { return }
        guard let description = descriptionTextField.text, !description.isEmpty else { return }
        person.name = name
        person.surName = surName
        person.patronymic = patronymic
        person.phone = phone
        person.town = town
        person.strit = strit
        person.numberHouse = numberHous
        person.body = body
        person.numberFlat = numberFlat
        person.personDescription = description
        StorageManager.shared.save(person)
        dismiss(animated: true)
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
