//
//  InfoDopMaterialViewController.swift
//  ListProduct
//
//  Created by Максим Гурков on 19.09.2022.
//

import UIKit
import RealmSwift

class InfoDopMaterialViewController: UIViewController {
    
    var person = Person()
    var materialPerson: DopMaterial!
    
    @IBOutlet weak var imageDopMaterialImage: UIImageView!
    @IBOutlet weak var InfoMaterialLabel: UILabel!
    @IBOutlet weak var appendMaterialButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = materialPerson.nameMaterial
        imageDopMaterialImage.layer.cornerRadius = 8
        appendMaterialButton.layer.cornerRadius = 8
        imageDopMaterialImage.image = UIImage(named: materialPerson.nameMaterial)
        InfoMaterialLabel.text = materialPerson.dimansion
    }
    
    private func appendNewDopMaterialPersonBascet() {
        let newMaterial = NewMaterialPerson()
        newMaterial.factory = materialPerson.factory
        newMaterial.material = materialPerson.nameMaterial
        newMaterial.dopNameMaterial = materialPerson.nameMaterial
        newMaterial.dimensions = materialPerson.dimansion
        newMaterial.price = materialPerson.price
        newMaterial.countMaterial = 1
        if person.basketDoorTree.isEmpty {
            StorageManager.shared.saveNewMaterial(person, material: newMaterial)
            return
        }
        if !person.basketDoorTree.isEmpty {
            for material in person.basketDoorTree {
                if material.dopNameMaterial == newMaterial.dopNameMaterial {
                    StorageManager.shared.renameNewMaterial(material, modelMaterial: materialPerson, newValue: 1)
                    return
                }
            }
        }
        if !person.basketDoorTree.isEmpty {
            for material in person.basketDoorTree {
                if newMaterial.dopNameMaterial != material.dopNameMaterial {
                    StorageManager.shared.saveNewMaterial(person, material: newMaterial)
                    return
                }
            }
        }
    }
    
    @IBAction func activeAppendMaterialButton() {
        appendNewDopMaterialPersonBascet()
    }
    
    
}
