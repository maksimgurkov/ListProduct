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
    @IBOutlet weak var deleteDopMaterialButton: UIButton!
    @IBOutlet weak var countDopMaterialLabel: UILabel!
    @IBOutlet weak var priceDopMaterialLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = materialPerson.nameMaterial
        imageDopMaterialImage.layer.cornerRadius = 8
        appendMaterialButton.layer.cornerRadius = 8
        deleteDopMaterialButton.layer.cornerRadius = 8
        imageDopMaterialImage.image = UIImage(named: materialPerson.nameMaterial)
        InfoMaterialLabel.text = materialPerson.dimansion
        countAndPriceMaterialPersonBascet()
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
            countDopMaterialLabel.text = "\(newMaterial.countMaterial)"
            priceDopMaterialLabel.text = "\(newMaterial.price)"
            return
        }
        if !person.basketDoorTree.isEmpty {
            for material in person.basketDoorTree {
                if material.dopNameMaterial == newMaterial.dopNameMaterial {
                    StorageManager.shared.renameNewMaterial(material, modelMaterial: materialPerson, newValue: 1)
                    countDopMaterialLabel.text = "\(material.countMaterial)"
                    priceDopMaterialLabel.text = "\(material.price)"
                    return
                }
            }
        }
        if !person.basketDoorTree.isEmpty {
            for material in person.basketDoorTree {
                if newMaterial.dopNameMaterial != material.dopNameMaterial {
                    StorageManager.shared.saveNewMaterial(person, material: newMaterial)
                    countDopMaterialLabel.text = "\(newMaterial.countMaterial)"
                    priceDopMaterialLabel.text = "\(newMaterial.price)"
                    return
                }
            }
        }
    }
    
    private func countAndPriceMaterialPersonBascet() {
        for material in person.basketDoorTree {
            if material.dopNameMaterial == materialPerson.nameMaterial {
                countDopMaterialLabel.text = "\(material.countMaterial)"
                priceDopMaterialLabel.text = "\(material.price)"
            }
        }
    }
    
    private func deleteDopMaterialPersonBascet() {
        for material in person.basketDoorTree {
            if material.dopNameMaterial == materialPerson.nameMaterial {
                if material.countMaterial > 1 {
                    StorageManager.shared.renameDeleteDopMaterial(material, modelMaterial: materialPerson, newValue: 1)
                    countDopMaterialLabel.text = "\(material.countMaterial)"
                    priceDopMaterialLabel.text = "\(material.price)"
                } else if material.countMaterial == 1 {
                    StorageManager.shared.delete(material)
                    countDopMaterialLabel.text = "0"
                    priceDopMaterialLabel.text = "0"
                }
            }
        }
    }
    
    @IBAction func activeAppendMaterialButton() {
        appendNewDopMaterialPersonBascet()
    }
    
    @IBAction func activeDeleteDopMaterialPersonButton() {
        deleteDopMaterialPersonBascet()
    }
    
}
