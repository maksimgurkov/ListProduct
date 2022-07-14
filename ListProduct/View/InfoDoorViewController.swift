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
    
    //MARK: - Doors Button
    @IBOutlet weak var door550Button: UIButton!
    @IBOutlet weak var door600Button: UIButton!
    @IBOutlet weak var door700Button: UIButton!
    @IBOutlet weak var door800Button: UIButton!
    @IBOutlet weak var door900Button: UIButton!
    
    //MARK: - Pogonzh Button
    @IBOutlet weak var korobButton: UIButton!
    @IBOutlet weak var casingButton: UIButton!
    @IBOutlet weak var dobor100Button: UIButton!
    @IBOutlet weak var dobor150Button: UIButton!
    @IBOutlet weak var dobor200Button: UIButton!
    @IBOutlet weak var lathButton: UIButton!
    
    //MARK: - Image
    @IBOutlet weak var doorImage: UIImageView!
    
    //MARK: - DoorsLabel
    @IBOutlet weak var descriptionDoorLabel: UILabel!
    @IBOutlet weak var specificationsDoorLabel: UILabel!
    
    @IBOutlet weak var countDoor550Label: UILabel!
    @IBOutlet weak var priceDoor550Label: UILabel!
    @IBOutlet weak var countDoor600Label: UILabel!
    @IBOutlet weak var priceDoor600Label: UILabel!
    @IBOutlet weak var countDoor700Label: UILabel!
    @IBOutlet weak var priceDoor700Label: UILabel!
    @IBOutlet weak var countDoor800Label: UILabel!
    @IBOutlet weak var priceDoor800Label: UILabel!
    @IBOutlet weak var countDoor900Label: UILabel!
    @IBOutlet weak var priceDoor900Label: UILabel!
    
    //MARK: - Pogonzh label
    @IBOutlet weak var korobCountLabel: UILabel!
    @IBOutlet weak var casingCountLabel: UILabel!
    @IBOutlet weak var dobor100CountLabel: UILabel!
    @IBOutlet weak var dobor150CountLabel: UILabel!
    @IBOutlet weak var dobor200CountLabel: UILabel!
    @IBOutlet weak var lathCountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = doorPerson.nameDoor
        
        doorCountInfo()
        
        door550Button.layer.cornerRadius = 8
        door600Button.layer.cornerRadius = 8
        door700Button.layer.cornerRadius = 8
        door800Button.layer.cornerRadius = 8
        door900Button.layer.cornerRadius = 8
        
        korobButton.layer.cornerRadius = 8
        casingButton.layer.cornerRadius = 8
        dobor100Button.layer.cornerRadius = 8
        dobor150Button.layer.cornerRadius = 8
        dobor200Button.layer.cornerRadius = 8
        lathButton.layer.cornerRadius = 8
        
        doorImage.image = UIImage(named: doorPerson.nameDoor)
        descriptionDoorLabel.text = doorPerson.descriptionDoor
        specificationsDoorLabel.text = doorPerson.specifications
    }
    //MARK: - privateFunc
    
    private func saveDoorPerson(factory: String, material: String, name: String, description: String, price: Int, dimensions: String, count: Int, countDoorInfo: UILabel, priceInfo: UILabel) {
        let newDoor = Doors()
        newDoor.factory = factory
        newDoor.material = material
        newDoor.nameDoor = name
        newDoor.descriptionDoor = description
        newDoor.price = price
        newDoor.dimensions = dimensions
        newDoor.countDoors = count
        if persone.basket.isEmpty {
            StorageManager.shared.saveProduct(persone, door: newDoor)
            countDoorInfo.text = "\(newDoor.countDoors)"
            return
        }
        if !persone.basket.isEmpty {
            for door in persone.basket {
                if door.dimensions == newDoor.dimensions {
                    StorageManager.shared.renameDoor(door, doors: doorPerson, newValue: 1)
                    countDoorInfo.text = "\(door.countDoors)"
                    priceInfo.text = "\(door.price)"
                    return
                }
            }
            if !persone.basket.isEmpty {
                for door in persone.basket {
                    if door.dimensions != newDoor.dimensions {
                        StorageManager.shared.saveProduct(persone, door: newDoor)
                        countDoorInfo.text = "\(newDoor.countDoors)"
                        priceInfo.text = "\(newDoor.price)"
                        return
                    }
                }
            }
        }
    }
    
    private func doorCountInfo() {
        if persone.basket.isEmpty {
            countDoor550Label.text = "0"
            countDoor600Label.text = "0"
            countDoor700Label.text = "0"
            countDoor800Label.text = "0"
            countDoor900Label.text = "0"
            priceDoor550Label.text = "\(doorPerson.price)"
            priceDoor600Label.text = "\(doorPerson.price)"
            priceDoor700Label.text = "\(doorPerson.price)"
            priceDoor800Label.text = "\(doorPerson.price)"
            priceDoor900Label.text = "\(doorPerson.price)"
        } else {
            for door in persone.basket {
                if door.dimensions == "550*1900" {
                    countDoor550Label.text = "\(door.countDoors)"
                    priceDoor550Label.text = "\(door.price)"
                } else if door.dimensions == "600*2000" {
                    countDoor600Label.text = "\(door.countDoors)"
                    priceDoor600Label.text = "\(door.price)"
                } else if door.dimensions == "700*2000" {
                    countDoor700Label.text = "\(door.countDoors)"
                    priceDoor700Label.text = "\(door.price)"
                } else if door.dimensions == "800*2000" {
                    countDoor800Label.text = "\(door.countDoors)"
                    priceDoor800Label.text = "\(door.price)"
                } else if door.dimensions == "900*2000" {
                    countDoor900Label.text = "\(door.countDoors)"
                    priceDoor900Label.text = "\(door.price)"
                }
                
            }
        }
    }
    
    //MARK: - ActionButtonDoors
    
    @IBAction func actionNewDoorButton(_ sender: UIButton) {
        switch sender {
        case door550Button:
            saveDoorPerson(factory: doorPerson.factory.rawValue,
                           material: doorPerson.material.rawValue,
                           name: doorPerson.nameDoor,
                           description: doorPerson.descriptionDoor,
                           price: doorPerson.price,
                           dimensions: "550*1900",
                           count: 1, countDoorInfo: countDoor550Label, priceInfo: priceDoor550Label)
        case door600Button:
            saveDoorPerson(factory: doorPerson.factory.rawValue,
                           material: doorPerson.material.rawValue,
                           name: doorPerson.nameDoor,
                           description: doorPerson.descriptionDoor,
                           price: doorPerson.price,
                           dimensions: "600*2000",
                           count: 1, countDoorInfo: countDoor600Label, priceInfo: priceDoor600Label)
        case door700Button:
            saveDoorPerson(factory: doorPerson.factory.rawValue,
                           material: doorPerson.material.rawValue,
                           name: doorPerson.nameDoor,
                           description: doorPerson.descriptionDoor,
                           price: doorPerson.price,
                           dimensions: "700*2000",
                           count: 1, countDoorInfo: countDoor700Label, priceInfo: priceDoor700Label)
        case door800Button:
            saveDoorPerson(factory: doorPerson.factory.rawValue,
                           material: doorPerson.material.rawValue,
                           name: doorPerson.nameDoor,
                           description: doorPerson.descriptionDoor,
                           price: doorPerson.price,
                           dimensions: "800*2000",
                           count: 1, countDoorInfo: countDoor800Label, priceInfo: priceDoor800Label)
        case door900Button:
            saveDoorPerson(factory: doorPerson.factory.rawValue,
                           material: doorPerson.material.rawValue,
                           name: doorPerson.nameDoor,
                           description: doorPerson.descriptionDoor,
                           price: doorPerson.price,
                           dimensions: "900*2000",
                           count: 1, countDoorInfo: countDoor900Label, priceInfo: priceDoor900Label)
        default:
            break
        }
    }
    
    @IBAction func saveDoorButton() {
       
    }
    
    // MARK: - Navigation

   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let servicesPriceLustVC = segue.destination as? ServicesPriceViewController else {return}
        servicesPriceLustVC.person = persone
    }
    

}
