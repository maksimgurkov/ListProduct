//
//  InfoProductSetViewController.swift
//  ListProduct
//
//  Created by Максим Гурков on 21.07.2022.
//

import UIKit

class InfoProductSetViewController: UIViewController {
    
    var infoProduct: Sets!
    var person: Person!

    @IBOutlet weak var imageProductSet: UIImageView!
    @IBOutlet weak var descriptionProductSetLabel: UILabel!
    @IBOutlet weak var nameSetLabel: UILabel!
    @IBOutlet weak var saveSetButton: UIButton!
    @IBOutlet weak var deleteSetButton: UIButton!
    @IBOutlet weak var countSetLabel: UILabel!
    @IBOutlet weak var priceSetLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = infoProduct.name
        imageProductSet.image = UIImage(named: infoProduct.name)
        descriptionProductSetLabel.text = "\(infoProduct.description)"
        nameSetLabel.text = infoProduct.name
        saveSetButton.layer.cornerRadius = 8
        deleteSetButton.layer.cornerRadius = 8
        forCountSet()
    }
    
    @IBAction func actionSaveSetBasketButton() {
        saveSetPerson()
    }

    @IBAction func activDeleteSetBasketButton() {
        deleteSet()
    }
    
    
    private func saveSetPerson() {
        let newSet = NewMaterialPerson()
        newSet.factory = infoProduct.factory.rawValue
        newSet.material = infoProduct.category.rawValue
        newSet.dopNameMaterial = infoProduct.name
        newSet.descriptionDoor = infoProduct.description
        newSet.price = infoProduct.priceSet * 3
        newSet.countMaterial = 1
        if person.basketDoorTree.isEmpty {
            StorageManager.shared.saveNewMaterial(person, material: newSet)
            countSetLabel.text = "\(newSet.countMaterial)"
            priceSetLabel.text = "\(newSet.price)"
            return
        }
        if !person.basketDoorTree.isEmpty {
            for setProduct in person.basketDoorTree {
                if setProduct.dimensions == newSet.dimensions && setProduct.factory == newSet.factory && setProduct.dopNameMaterial == infoProduct.name {
                    StorageManager.shared.renameSetAppand(setProduct, doors: infoProduct, newValue: 1)
                    countSetLabel.text = "\(setProduct.countMaterial)"
                    priceSetLabel.text = "\(setProduct.price)"
                    return
                }
            }
            if !person.basketDoorTree.isEmpty {
                for setProduct in person.basketDoorTree {
                    if setProduct.factory == newSet.factory && setProduct.dopNameMaterial != newSet.dopNameMaterial || setProduct.factory != newSet.factory {
                        StorageManager.shared.saveNewMaterial(person, material: newSet)
                        countSetLabel.text = "\(newSet.countMaterial)"
                        priceSetLabel.text = "\(newSet.price)"
                        return
                    }
                }
            }
        }
    }
    
    private func deleteSet() {
        if !person.basketDoorTree.isEmpty {
            for setProduct in person.basketDoorTree {
                if setProduct.dopNameMaterial == infoProduct.name {
                    if setProduct.countMaterial > 1 {
                        StorageManager.shared.renameSetDelete(setProduct, doors: infoProduct, newValue: 1)
                        countSetLabel.text = "\(setProduct.countMaterial)"
                        priceSetLabel.text = "\(setProduct.price)"
                    } else if setProduct.countMaterial == 1 {
                        StorageManager.shared.delete(setProduct)
                        countSetLabel.text = "\(0)"
                        priceSetLabel.text = "\(0)"
                    }
                }
            }
        }
    }
    
    private func forCountSet() {
        for setPerson in person.basketDoorTree {
            if setPerson.dopNameMaterial == infoProduct.name {
                countSetLabel.text = "\(setPerson.countMaterial)"
                priceSetLabel.text = "\(setPerson.price)"
            }
        }
    }
    
}
