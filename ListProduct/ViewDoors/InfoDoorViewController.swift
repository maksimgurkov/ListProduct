//
//  InfoDoorViewController.swift
//  MyPriceList
//
//  Created by Максим Гурков on 04.07.2022.
//

import UIKit
import RealmSwift

class InfoDoorViewController: UIViewController {
    
    var persone: Person!
    var doorPerson: Door!
    var pogonages = Pogonage.forPogonages()
    var sortPogonages: [Pogonage] = []
    
    //MARK: - Doors Button
    @IBOutlet weak var door550Button: UIButton!
    @IBOutlet weak var door6001900Button: UIButton!
    @IBOutlet weak var door600Button: UIButton!
    @IBOutlet weak var door700Button: UIButton!
    @IBOutlet weak var door800Button: UIButton!
    @IBOutlet weak var door900Button: UIButton!
    @IBOutlet weak var nonStandartDoorButton: UIButton!
    @IBOutlet weak var deleteDoor550Button: UIButton!
    @IBOutlet weak var deleteDoor6001900Button: UIButton!
    @IBOutlet weak var deleteDoor600Button: UIButton!
    @IBOutlet weak var deleteDoor700Button: UIButton!
    @IBOutlet weak var deleteDoor800Button: UIButton!
    @IBOutlet weak var deleteDoor900Button: UIButton!
    
    
    //MARK: - Pogonzh Button
    @IBOutlet weak var korobButton: UIButton!
    @IBOutlet weak var casingButton: UIButton!
    @IBOutlet weak var dobor100Button: UIButton!
    @IBOutlet weak var dobor150Button: UIButton!
    @IBOutlet weak var dobor200Button: UIButton!
    @IBOutlet weak var lathButton: UIButton!
    @IBOutlet weak var nonStandartPogonageButton: UIButton!
    @IBOutlet weak var deletekorobButton: UIButton!
    @IBOutlet weak var deletecasingButton: UIButton!
    @IBOutlet weak var deletedobor100Button: UIButton!
    @IBOutlet weak var deletedobor150Button: UIButton!
    @IBOutlet weak var deletedobor200Button: UIButton!
    @IBOutlet weak var deletelathButton: UIButton!
    
    
    //MARK: - Image
    @IBOutlet weak var doorImage: UIImageView!
    
    //MARK: - DoorsLabel
    @IBOutlet weak var descriptionDoorLabel: UILabel!
    @IBOutlet weak var specificationsDoorLabel: UILabel!
    @IBOutlet weak var priceDoorPersonLabel: UILabel!
    @IBOutlet weak var nonStandartDoorLabel: UILabel!
    
    
    @IBOutlet weak var countDoor550Label: UILabel!
    @IBOutlet weak var priceDoor550Label: UILabel!
    @IBOutlet weak var countDoor6001900Label: UILabel!
    @IBOutlet weak var priceDoor6001900Label: UILabel!
    @IBOutlet weak var countDoor600Label: UILabel!
    @IBOutlet weak var priceDoor600Label: UILabel!
    @IBOutlet weak var countDoor700Label: UILabel!
    @IBOutlet weak var priceDoor700Label: UILabel!
    @IBOutlet weak var countDoor800Label: UILabel!
    @IBOutlet weak var priceDoor800Label: UILabel!
    @IBOutlet weak var countDoor900Label: UILabel!
    @IBOutlet weak var priceDoor900Label: UILabel!
    
    @IBOutlet weak var nonStandartCountDoorsLabel: UILabel!
    @IBOutlet weak var nonStandartPriceDoorsLabel: UILabel!
    @IBOutlet weak var nonStandartCountPogonageLabel: UILabel!
    @IBOutlet weak var nonStandartPricePogonageLabel: UILabel!
    
    
    //MARK: - Pogonzh label
    @IBOutlet weak var korobCountLabel: UILabel!
    @IBOutlet weak var casingCountLabel: UILabel!
    @IBOutlet weak var dobor100CountLabel: UILabel!
    @IBOutlet weak var dobor150CountLabel: UILabel!
    @IBOutlet weak var dobor200CountLabel: UILabel!
    @IBOutlet weak var lathCountLabel: UILabel!
    
    @IBOutlet weak var priceKorobLabel: UILabel!
    @IBOutlet weak var priceCasingLabel: UILabel!
    @IBOutlet weak var priceDobor100Label: UILabel!
    @IBOutlet weak var priceDobor150Label: UILabel!
    @IBOutlet weak var priceDobor200Label: UILabel!
    @IBOutlet weak var priceLathLabel: UILabel!
    
    @IBOutlet weak var setsButton: UIButton!
    @IBOutlet weak var servicesButton: UIButton!
    
    //MARK: - NonStandart TextField
    @IBOutlet weak var nonStandartWidthTextField: UITextField!
    @IBOutlet weak var nonStandartHeightTextField: UITextField!
    @IBOutlet weak var nameNonStandartPogonageTextField: UITextField!
    @IBOutlet weak var nonStandartHeightPogonageTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = doorPerson.nameDoor
        nonStandartDoorLabel.text = doorPerson.nameDoor
        
        priceDoorPersonLabel.text = "Выбор полотен."
        
        doorCountInfoAndPrice()
        forActiveButton()
        forSortPogonages()
        
        door550Button.layer.cornerRadius = 8
        door6001900Button.layer.cornerRadius = 8
        door600Button.layer.cornerRadius = 8
        door700Button.layer.cornerRadius = 8
        door800Button.layer.cornerRadius = 8
        door900Button.layer.cornerRadius = 8
        
        deleteDoor550Button.layer.cornerRadius = 8
        deleteDoor6001900Button.layer.cornerRadius = 8
        deleteDoor600Button.layer.cornerRadius = 8
        deleteDoor700Button.layer.cornerRadius = 8
        deleteDoor800Button.layer.cornerRadius = 8
        deleteDoor900Button.layer.cornerRadius = 8
        
        korobButton.layer.cornerRadius = 8
        casingButton.layer.cornerRadius = 8
        dobor100Button.layer.cornerRadius = 8
        dobor150Button.layer.cornerRadius = 8
        dobor200Button.layer.cornerRadius = 8
        lathButton.layer.cornerRadius = 8
        
        deletekorobButton.layer.cornerRadius = 8
        deletecasingButton.layer.cornerRadius = 8
        deletedobor100Button.layer.cornerRadius = 8
        deletedobor150Button.layer.cornerRadius = 8
        deletedobor200Button.layer.cornerRadius = 8
        deletelathButton.layer.cornerRadius = 8
        
        nonStandartDoorButton.layer.cornerRadius = 8
        nonStandartPogonageButton.layer.cornerRadius = 8
        
        setsButton.layer.cornerRadius = 8
        servicesButton.layer.cornerRadius = 8
        
        doorImage.image = UIImage(named: doorPerson.nameDoor)
        descriptionDoorLabel.text = doorPerson.descriptionDoor
        specificationsDoorLabel.text = doorPerson.specifications
    }
    //MARK: - privateFunc
    
    private func forSortPogonages() {
        for test in pogonages {
            if test.factory.rawValue == doorPerson.factory.rawValue && test.material.rawValue == doorPerson.material.rawValue {
                sortPogonages.append(test)
            }
        }
    }
    
    private func forPricePogonage(name: String) -> Int {
        var price = 0
        for pogonag in sortPogonages {
            if pogonag.nameDoor == name {
                price = pogonag.price
            }
        }
        return price
    }
    
    private func saveDoorPerson(factory: String, material: String, name: String, description: String, price: Int, dimensions: String, count: Int, countDoorInfo: UILabel, priceInfo: UILabel) {
        let newDoor = Doors()
        newDoor.factory = factory
        newDoor.material = material
        newDoor.nameDoor = name
        newDoor.namePogonage = name
        newDoor.descriptionDoor = description
        newDoor.price = price * 3
        newDoor.dimensions = dimensions
        newDoor.countDoors = count
        if persone.basket.isEmpty {
            StorageManager.shared.saveProduct(persone, door: newDoor)
            countDoorInfo.text = "\(newDoor.countDoors)"
            priceInfo.text = "\(newDoor.price)"
            return
        }
        if !persone.basket.isEmpty {
            for door in persone.basket {
                if door.dimensions == newDoor.dimensions && door.factory == newDoor.factory && door.nameDoor == doorPerson.nameDoor {
                    StorageManager.shared.renameDoor(door, doors: doorPerson, newValue: 1)
                    countDoorInfo.text = "\(door.countDoors)"
                    priceInfo.text = "\(door.price)"
                    return
                }
            }
            if !persone.basket.isEmpty {
                for door in persone.basket {
                    if door.factory == newDoor.factory && door.dimensions != newDoor.dimensions || door.factory != newDoor.factory {
                        StorageManager.shared.saveProduct(persone, door: newDoor)
                        countDoorInfo.text = "\(newDoor.countDoors)"
                        priceInfo.text = "\(newDoor.price)"
                        return
                    }
                }
            }
        }
    }
    
    private func savePogonagePerson(factory: String, material: String, name: String, price: Int, dimansion: String, count: Int, countInfoPogonage: UILabel, pricePogonage: UILabel) {
        let pogonage = Doors()
        pogonage.factory = factory
        pogonage.material = material
        pogonage.nameDoor = doorPerson.nameDoor
        pogonage.namePogonage = name
        pogonage.price = price * 3
        pogonage.dimensions = dimansion
        pogonage.countDoors = count
        if persone.basket.isEmpty {
            StorageManager.shared.saveProduct(persone, door: pogonage)
            countInfoPogonage.text = "\(pogonage.countDoors)"
            pricePogonage.text = "\(pogonage.price)"
            return
        }
        if !persone.basket.isEmpty {
            for pogonag in persone.basket {
                if pogonag.namePogonage == pogonage.namePogonage && pogonag.factory == pogonage.factory && pogonag.nameDoor == pogonage.nameDoor && pogonag.dimensions == pogonage.dimensions {
                    StorageManager.shared.renamePogonage(pogonag, pogonages: price, newValue: 1)
                    countInfoPogonage.text = "\(pogonag.countDoors)"
                    pricePogonage.text = "\(pogonag.price)"
                    return
                }
            }
            if !persone.basket.isEmpty {
                for pogonag in persone.basket {
                    if pogonag.namePogonage != pogonage.namePogonage {
                        StorageManager.shared.saveProduct(persone, door: pogonage)
                        countInfoPogonage.text = "\(pogonage.countDoors)"
                        pricePogonage.text = "\(pogonage.price)"
                        return
                    }
                }
            }
        }
    }
    
    private func deleteDoor(dimention: String, countLabel: UILabel, priceLabel: UILabel) {
        if !persone.basket.isEmpty {
            for door in persone.basket {
                if door.nameDoor == doorPerson.nameDoor && door.dimensions == dimention {
                    if door.countDoors > 1 {
                        StorageManager.shared.renameDoorDelete(door, doors: doorPerson, newValue: 1)
                        countLabel.text = "\(door.countDoors)"
                        priceLabel.text = "\(door.price)"
                    } else if door.countDoors == 1 {
                        StorageManager.shared.delete(door)
                        countLabel.text = "0"
                        priceLabel.text = "0"
                    }
                }
            }
        }
    }
    
    private func deletePogonage(name: String, countLabel: UILabel, priceLabel: UILabel, price: Int) {
        if !persone.basket.isEmpty {
            for pogonage in persone.basket {
                if pogonage.nameDoor == doorPerson.nameDoor && pogonage.namePogonage == name {
                    if pogonage.countDoors > 1 {
                        StorageManager.shared.renamePogonageDelete(pogonage, pogonages: price, newValue: 1)
                        countLabel.text = "\(pogonage.countDoors)"
                        priceLabel.text = "\(pogonage.price)"
                    } else if pogonage.countDoors == 1 {
                        StorageManager.shared.delete(pogonage)
                        countLabel.text = "0"
                        priceLabel.text = "0"
                    }
                }
            }
        }
    }
        
    private func nonStandarDoortData() -> String {
        var resalt = ""
        guard let width = nonStandartWidthTextField.text, !width.isEmpty else { return "" }
        guard let height = nonStandartHeightTextField.text, !height.isEmpty else { return "" }
        resalt = "\(width)*\(height)"
        return resalt
    }
    
    private func nonStandartNamePogonageData() -> String {
        guard let name = nameNonStandartPogonageTextField.text else { return "" }
        return name
    }
    
    private func nonSyandertHeightPogonage() -> String {
        guard let height = nonStandartHeightPogonageTextField.text else { return "" }
        return height
    }
    
    private func forActiveButton() {
        if doorPerson.flag {
            nonStandartDoorButton.isEnabled = true
            nonStandartPogonageButton.isEnabled = true
        } else {
            nonStandartDoorButton.isEnabled = false
            nonStandartPogonageButton.isEnabled = false
        }
    }
        
    private func doorCountInfoAndPrice() {
        for door in persone.basket {
            if door.factory == doorPerson.factory.rawValue {
                if door.dimensions == "550*1900" && door.nameDoor == doorPerson.nameDoor {
                    countDoor550Label.text = "\(door.countDoors)"
                    priceDoor550Label.text = "\(door.price)"
                } else if door.dimensions == "600*1900" && door.nameDoor == doorPerson.nameDoor {
                    countDoor6001900Label.text = "\(door.countDoors)"
                    priceDoor6001900Label.text = "\(door.price)"
                } else if door.dimensions == "600*2000" && door.nameDoor == doorPerson.nameDoor {
                    countDoor600Label.text = "\(door.countDoors)"
                    priceDoor600Label.text = "\(door.price)"
                } else if door.dimensions == "700*2000" && door.nameDoor == doorPerson.nameDoor {
                    countDoor700Label.text = "\(door.countDoors)"
                    priceDoor700Label.text = "\(door.price)"
                } else if door.dimensions == "800*2000" && door.nameDoor == doorPerson.nameDoor {
                    countDoor800Label.text = "\(door.countDoors)"
                    priceDoor800Label.text = "\(door.price)"
                } else if door.dimensions == "900*2000" && door.nameDoor == doorPerson.nameDoor {
                    countDoor900Label.text = "\(door.countDoors)"
                    priceDoor900Label.text = "\(door.price)"
                } else if door.namePogonage == "Короб" && door.nameDoor == doorPerson.nameDoor {
                    korobCountLabel.text = "\(door.countDoors)"
                    priceKorobLabel.text = "\(door.price)"
                } else if door.namePogonage == "Наличник" && door.nameDoor == doorPerson.nameDoor {
                    casingCountLabel.text = "\(door.countDoors)"
                    priceCasingLabel.text = "\(door.price)"
                } else if door.namePogonage == "Добор 100" && door.nameDoor == doorPerson.nameDoor {
                    dobor100CountLabel.text = "\(door.countDoors)"
                    priceDobor100Label.text = "\(door.price)"
                } else if door.namePogonage == "Добор 150" && door.nameDoor == doorPerson.nameDoor {
                    dobor150CountLabel.text = "\(door.countDoors)"
                    priceDobor150Label.text = "\(door.price)"
                } else if door.namePogonage == "Добор 200" && door.nameDoor == doorPerson.nameDoor {
                    dobor200CountLabel.text = "\(door.countDoors)"
                    priceDobor200Label.text = "\(door.price)"
                } else if door.namePogonage == "Притвор" && door.nameDoor == doorPerson.nameDoor {
                    lathCountLabel.text = "\(door.countDoors)"
                    priceLathLabel.text = "\(door.price)"
                }
            }
        }
    }
    
    //MARK: - ActionButton
    
    @IBAction func homeButtonAtion(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    
    @IBAction func actionNewDoorButton(_ sender: UIButton) {
        switch sender {
        case door550Button:
            saveDoorPerson(factory: doorPerson.factory.rawValue,
                           material: doorPerson.material.rawValue,
                           name: doorPerson.nameDoor,
                           description: doorPerson.descriptionDoor,
                           price: doorPerson.price,
                           dimensions: "550*1900",
                           count: 1,
                           countDoorInfo: countDoor550Label,
                           priceInfo: priceDoor550Label)
        case door6001900Button:
            saveDoorPerson(factory: doorPerson.factory.rawValue,
                           material: doorPerson.material.rawValue,
                           name: doorPerson.nameDoor,
                           description: doorPerson.descriptionDoor,
                           price: doorPerson.price,
                           dimensions: "600*1900",
                           count: 1,
                           countDoorInfo: countDoor6001900Label,
                           priceInfo: priceDoor6001900Label)
        case door600Button:
            saveDoorPerson(factory: doorPerson.factory.rawValue,
                           material: doorPerson.material.rawValue,
                           name: doorPerson.nameDoor,
                           description: doorPerson.descriptionDoor,
                           price: doorPerson.price,
                           dimensions: "600*2000",
                           count: 1,
                           countDoorInfo: countDoor600Label,
                           priceInfo: priceDoor600Label)
        case door700Button:
            saveDoorPerson(factory: doorPerson.factory.rawValue,
                           material: doorPerson.material.rawValue,
                           name: doorPerson.nameDoor,
                           description: doorPerson.descriptionDoor,
                           price: doorPerson.price,
                           dimensions: "700*2000",
                           count: 1,
                           countDoorInfo: countDoor700Label,
                           priceInfo: priceDoor700Label)
        case door800Button:
            saveDoorPerson(factory: doorPerson.factory.rawValue,
                           material: doorPerson.material.rawValue,
                           name: doorPerson.nameDoor,
                           description: doorPerson.descriptionDoor,
                           price: doorPerson.price,
                           dimensions: "800*2000",
                           count: 1,
                           countDoorInfo: countDoor800Label,
                           priceInfo: priceDoor800Label)
        case door900Button:
            saveDoorPerson(factory: doorPerson.factory.rawValue,
                           material: doorPerson.material.rawValue,
                           name: doorPerson.nameDoor,
                           description: doorPerson.descriptionDoor,
                           price: doorPerson.price,
                           dimensions: "900*2000",
                           count: 1,
                           countDoorInfo: countDoor900Label,
                           priceInfo: priceDoor900Label)
        case nonStandartDoorButton:
            saveDoorPerson(factory: doorPerson.factory.rawValue,
                           material: doorPerson.material.rawValue,
                           name: doorPerson.nameDoor,
                           description: doorPerson.descriptionDoor,
                           price: (doorPerson.price / 100 * 30) + doorPerson.price,
                           dimensions: nonStandarDoortData(),
                           count: 1,
                           countDoorInfo: nonStandartCountDoorsLabel,
                           priceInfo: nonStandartPriceDoorsLabel)
        default:
            break
        }
    }
    
    @IBAction func actionNewPogonageButton(_ sender: UIButton) {
        switch sender {
        case korobButton:
            savePogonagePerson(factory: doorPerson.factory.rawValue,
                               material: doorPerson.material.rawValue,
                               name: "Короб",
                               price: forPricePogonage(name: "Короб"),
                               dimansion: "Cтандарт",
                               count: 1,
                               countInfoPogonage: korobCountLabel,
                               pricePogonage: priceKorobLabel)
        case casingButton:
            savePogonagePerson(factory: doorPerson.factory.rawValue,
                               material: doorPerson.material.rawValue,
                               name: "Наличник",
                               price: forPricePogonage(name: "Наличник"),
                               dimansion: "Cтандарт",
                               count: 1,
                               countInfoPogonage: casingCountLabel,
                               pricePogonage: priceCasingLabel)
        case dobor100Button:
            savePogonagePerson(factory: doorPerson.factory.rawValue,
                               material: doorPerson.material.rawValue,
                               name: "Добор 100",
                               price: forPricePogonage(name: "Добор 100"),
                               dimansion: "Cтандарт",
                               count: 1,
                               countInfoPogonage: dobor100CountLabel,
                               pricePogonage: priceDobor100Label)
        case dobor150Button:
            savePogonagePerson(factory: doorPerson.factory.rawValue,
                               material: doorPerson.material.rawValue,
                               name: "Добор 150",
                               price: forPricePogonage(name: "Добор 150"),
                               dimansion: "Cтандарт",
                               count: 1,
                               countInfoPogonage: dobor150CountLabel,
                               pricePogonage: priceDobor150Label)
        case dobor200Button:
            savePogonagePerson(factory: doorPerson.factory.rawValue,
                               material: doorPerson.material.rawValue,
                               name: "Добор 200",
                               price: forPricePogonage(name: "Добор 200"),
                               dimansion: "Cтандарт",
                               count: 1,
                               countInfoPogonage: dobor200CountLabel,
                               pricePogonage: priceDobor200Label)
        case lathButton:
            savePogonagePerson(factory: doorPerson.factory.rawValue,
                               material: doorPerson.material.rawValue,
                               name: "Притвор",
                               price: forPricePogonage(name: "Притвор"),
                               dimansion: "Cтандарт",
                               count: 1,
                               countInfoPogonage: lathCountLabel,
                               pricePogonage: priceLathLabel)
        case nonStandartPogonageButton:
            savePogonagePerson(factory: doorPerson.factory.rawValue,
                               material: doorPerson.material.rawValue,
                               name: nonStandartNamePogonageData(),
                               price: (forPricePogonage(name: nonStandartNamePogonageData()) / 100 * 30) + forPricePogonage(name: nonStandartNamePogonageData()),
                               dimansion: nonSyandertHeightPogonage(),
                               count: 1,
                               countInfoPogonage: nonStandartCountPogonageLabel,
                               pricePogonage: nonStandartPricePogonageLabel)
        default:
            break
        }
    }
    
    @IBAction func actionDeleteDoorButton(_ sender: UIButton) {
        switch sender {
        case deleteDoor550Button:
            deleteDoor(dimention: "550*1900", countLabel: countDoor550Label, priceLabel: priceDoor550Label)
        case deleteDoor6001900Button:
            deleteDoor(dimention: "600*1900", countLabel: countDoor6001900Label, priceLabel: priceDoor6001900Label)
        case deleteDoor600Button:
            deleteDoor(dimention: "600*1900", countLabel: countDoor600Label, priceLabel: priceDoor600Label)
        case deleteDoor700Button:
            deleteDoor(dimention: "700*2000", countLabel: countDoor700Label, priceLabel: priceDoor700Label)
        case deleteDoor800Button:
            deleteDoor(dimention: "800*2000", countLabel: countDoor800Label, priceLabel: priceDoor800Label)
        case deleteDoor900Button:
            deleteDoor(dimention: "900*2000", countLabel: countDoor900Label, priceLabel: priceDoor900Label)
        case deletekorobButton:
            deletePogonage(name: "Короб", countLabel: korobCountLabel, priceLabel: priceKorobLabel, price: forPricePogonage(name: "Короб"))
        case deletecasingButton:
            deletePogonage(name: "Наличник", countLabel: casingCountLabel, priceLabel: priceCasingLabel, price: forPricePogonage(name: "Наличник"))
        default:
            break
        }
    }
    
    
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let servicesPriceLustVC = segue.destination as? ServiceListTableViewController {
            servicesPriceLustVC.person = persone
        } else if let setPriceListVC = segue.destination as? SetsTableViewController {
            setPriceListVC.person = persone
        }
    }

}
