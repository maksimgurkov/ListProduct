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
    }
    
    @IBAction func actionSaveSetBasketButton() {
        saveSetPerson()
    }

    @IBAction func activDeleteSetBasketButton() {
    }
    
    
    private func saveSetPerson() {
        let newSet = Doors()
        newSet.factory = infoProduct.factory.rawValue
        newSet.material = infoProduct.category.rawValue
        newSet.nameDoor = infoProduct.name
        newSet.descriptionDoor = infoProduct.description
        newSet.price = infoProduct.priceSet
        newSet.countDoors = 1
        if person.basket.isEmpty {
            StorageManager.shared.saveProduct(person, door: newSet)
            countSetLabel.text = "\(newSet.countDoors)"
            priceSetLabel.text = "\(newSet.price)"
            return
        }
        if !person.basket.isEmpty {
            for setProduct in person.basket {
                if setProduct.dimensions == newSet.dimensions && setProduct.factory == newSet.factory && setProduct.nameDoor == infoProduct.name {
                    StorageManager.shared.renameSetAppand(setProduct, doors: infoProduct, newValue: 1)
                    countSetLabel.text = "\(setProduct.countDoors)"
                    priceSetLabel.text = "\(setProduct.price)"
                    return
                }
            }
            if !person.basket.isEmpty {
                for setProduct in person.basket {
                    if setProduct.factory == newSet.factory && setProduct.nameDoor != newSet.nameDoor || setProduct.factory != newSet.factory {
                        StorageManager.shared.saveProduct(person, door: newSet)
                        countSetLabel.text = "\(newSet.countDoors)"
                        priceSetLabel.text = "\(newSet.price)"
                        return
                    }
                }
            }
        }
    }
    
    private func deleteSet() {
        if !person.basketService.isEmpty {
            for setProduct in person.basket {
                if setProduct.nameDoor == infoProduct.name {
                    if setProduct.countDoors > 1 {
                        StorageManager.shared.renameSetDelete(setProduct, doors: infoProduct, newValue: 1)
                        countSetLabel.text = "\(setProduct.countDoors)"
                        priceSetLabel.text = "\(setProduct.countDoors)"
                    } else if setProduct.countDoors == 1 {
                        StorageManager.shared.delete(setProduct)
                        countSetLabel.text = "\(0)"
                        priceSetLabel.text = "\(0)"
                    }
                }
            }
        }
    }
    
}
