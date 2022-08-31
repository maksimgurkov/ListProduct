//
//  SpecialisrRegistrationViewController.swift
//  ListProduct
//
//  Created by Максим Гурков on 31.08.2022.
//

import UIKit
import RealmSwift

class SpecialisrRegistrationViewController: UIViewController {
    
    var specialist: Results<Specialist>!
    
    @IBOutlet weak var photoSpecialistButton: UIButton!
    @IBOutlet weak var saveSpecialistInfoButton: UIButton!
    @IBOutlet weak var surNameTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var patronycTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Регистрация"
        photoSpecialistButton.layer.cornerRadius = 8
        saveSpecialistInfoButton.layer.cornerRadius = 8

    }
    
    @IBAction func clousedButton() {
        dismiss(animated: true)
    }
    
    @IBAction func saveActivSpecialistButton() {
        let specialist = Specialist()
        guard let surName = surNameTextField.text, !surName.isEmpty else { return }
        guard let name = nameTextField.text, !name.isEmpty else { return }
        guard let patronyc = patronycTextField.text, !patronyc.isEmpty else { return }
        specialist.surName = surName
        specialist.name = name
        specialist.patronymic = patronyc
        StorageManager.shared.specialistSave(specialist)
        dismiss(animated: true)
        
    }
}
