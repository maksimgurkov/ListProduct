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
    
    
    //MARK: - Private
    
    private var resultCountDoors550 = 0
    private var resultCountDoors600 = 0
    private var resultCountDoors700 = 0
    private var resultCountDoors800 = 0
    private var resultCountDoors900 = 0
    
    private var resultKorobCount = 0
    private var resultCasingCount = 0
    private var resultDobor100Count = 0
    private var resultDobor150Count = 0
    private var resultDobor200Count = 0
    private var resultLathCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = doorPerson.nameDoor
        
        countProduct()
        
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
        priceDoor550Label.text = "\(doorPerson.price) р. за 1 шт."
    }
    
    //MARK: - Door550
    
    @IBAction func actionToBuyDoor550() {
        let doors = Doors()
        doors.factory = doorPerson.factory.rawValue
        doors.material = doorPerson.material.rawValue
        doors.nameDoor = doorPerson.nameDoor
        doors.descriptionDoor = doorPerson.descriptionDoor
        doors.price = doorPerson.price
        doors.dimensions = "550*1900"
        StorageManager.shared.saveProduct(persone, door: doors)
        resultCountDoors550 += 1
        countDoor550Label.text = "\(resultCountDoors550)"
    }
    
    //MARK: - Door600
    
    @IBAction func actionToBuyDoor600() {
        resultCountDoors600 += 1
        countDoor600Label.text = "\(resultCountDoors600)"
        let doors = Doors()
        doors.factory = doorPerson.factory.rawValue
        doors.material = doorPerson.material.rawValue
        doors.nameDoor = doorPerson.nameDoor
        doors.descriptionDoor = doorPerson.descriptionDoor
        doors.price = doorPerson.price
        doors.dimensions = "600*2000"
        StorageManager.shared.saveProduct(persone, door: doors)
    }
    
    //MARK: - Door700
    
    @IBAction func actionToBuyDoor700() {
        resultCountDoors700 += 1
        countDoor700Label.text = "\(resultCountDoors700)"
        let doors = Doors()
        doors.factory = doorPerson.factory.rawValue
        doors.material = doorPerson.material.rawValue
        doors.nameDoor = doorPerson.nameDoor
        doors.descriptionDoor = doorPerson.descriptionDoor
        doors.price = doorPerson.price
        doors.dimensions = "700*2000"
        StorageManager.shared.saveProduct(persone, door: doors)
    }
    
    //MARK: - Door800

    @IBAction func actionToBuyDoor800() {
        resultCountDoors800 += 1
        countDoor800Label.text = "\(resultCountDoors800)"
        let doors = Doors()
        doors.factory = doorPerson.factory.rawValue
        doors.material = doorPerson.material.rawValue
        doors.nameDoor = doorPerson.nameDoor
        doors.descriptionDoor = doorPerson.descriptionDoor
        doors.price = doorPerson.price
        doors.dimensions = "800*2000"
        StorageManager.shared.saveProduct(persone, door: doors)
    }
    
    //MARK: - Door900
    
    @IBAction func actionToBuyDoor900() {
        resultCountDoors900 += 1
        countDoor900Label.text = "\(resultCountDoors900)"
        let doors = Doors()
        doors.factory = doorPerson.factory.rawValue
        doors.material = doorPerson.material.rawValue
        doors.nameDoor = doorPerson.nameDoor
        doors.descriptionDoor = doorPerson.descriptionDoor
        doors.price = doorPerson.price
        doors.dimensions = "900*2000"
        StorageManager.shared.saveProduct(persone, door: doors)
    }
    
    //MARK: - KorobButton
    
    @IBAction func actionKorobButton() {
        resultKorobCount += 1
        korobCountLabel.text = "\(resultKorobCount)"
        let doors = Doors()
        doors.factory = doorPerson.factory.rawValue
        doors.material = doorPerson.material.rawValue
        doors.nameDoor = "Короб(уплотнитель)"
        doors.descriptionDoor = ""
        doors.price = doorPerson.price
        doors.dimensions = "75*35*2070"
        StorageManager.shared.saveProduct(persone, door: doors)
    }
    
    //MARK: - CasingButton
    
    @IBAction func actionCasingButton() {
        resultCasingCount += 1
        casingCountLabel.text = "\(resultCasingCount)"
        let doors = Doors()
        doors.factory = doorPerson.factory.rawValue
        doors.material = doorPerson.material.rawValue
        doors.nameDoor = "Наличник телескоп"
        doors.descriptionDoor = ""
        doors.price = doorPerson.price
        doors.dimensions = "70*10*2100"
        StorageManager.shared.saveProduct(persone, door: doors)
    }
    
    //MARK: - Dobor100Button
    
    @IBAction func actionDobor100Button() {
        resultDobor100Count += 1
        dobor100CountLabel.text = "\(resultDobor100Count)"
        let doors = Doors()
        doors.factory = doorPerson.factory.rawValue
        doors.material = doorPerson.material.rawValue
        doors.nameDoor = "Добор 100"
        doors.descriptionDoor = ""
        doors.price = doorPerson.price
        doors.dimensions = "100*10*2100"
        StorageManager.shared.saveProduct(persone, door: doors)
    }
    
    //MARK: - Dobor150Button
    
    @IBAction func actionDobor150Button() {
        resultDobor150Count += 1
        dobor150CountLabel.text = "\(resultDobor150Count)"
        let doors = Doors()
        doors.factory = doorPerson.factory.rawValue
        doors.material = doorPerson.material.rawValue
        doors.nameDoor = "Добор 150"
        doors.descriptionDoor = ""
        doors.price = doorPerson.price
        doors.dimensions = "150*10*2100"
        StorageManager.shared.saveProduct(persone, door: doors)
    }
    
    //MARK: - Dobor200Button
    
    @IBAction func actionDobor200Button() {
        resultDobor200Count += 1
        dobor200CountLabel.text = "\(resultDobor200Count)"
        let doors = Doors()
        doors.factory = doorPerson.factory.rawValue
        doors.material = doorPerson.material.rawValue
        doors.nameDoor = "Добор 200"
        doors.descriptionDoor = ""
        doors.price = doorPerson.price
        doors.dimensions = "200*10*2100"
        StorageManager.shared.saveProduct(persone, door: doors)
    }
    
    //MARK: - lathButton
    
    @IBAction func actionLathButton() {
        resultLathCount += 1
        lathCountLabel.text = "\(resultLathCount)"
        let doors = Doors()
        doors.factory = doorPerson.factory.rawValue
        doors.material = doorPerson.material.rawValue
        doors.nameDoor = "Притвор"
        doors.descriptionDoor = ""
        doors.price = doorPerson.price
        doors.dimensions = "30*10*2100"
        StorageManager.shared.saveProduct(persone, door: doors)
    }
    
    @IBAction func saveDoorButton() {
       
    }
    
    private func countProduct() {
        for door in persone.basket {
            if door.dimensions == "550*1900" {
                resultCountDoors550 += 1
                countDoor550Label.text = "\(resultCountDoors550)"
            }
            if door.dimensions == "600*2000" {
                resultCountDoors600 += 1
                countDoor600Label.text = "\(resultCountDoors600)"
            }
            if door.dimensions == "700*2000" {
                resultCountDoors700 += 1
                countDoor700Label.text = "\(resultCountDoors700)"
            }
            if door.dimensions == "800*2000" {
                resultCountDoors800 += 1
                countDoor800Label.text = "\(resultCountDoors800)"
            }
            if door.dimensions == "900*2000" {
                resultCountDoors900 += 1
                countDoor900Label.text = "\(resultCountDoors900)"
            }
            if door.nameDoor == "Короб(уплотнитель)" {
                resultKorobCount += 1
                korobCountLabel.text = "\(resultKorobCount)"
            }
            if door.nameDoor == "Наличник телескоп" {
                resultCasingCount += 1
                casingCountLabel.text = "\(resultCasingCount)"
            }
            if door.nameDoor == "Добор 100" {
                resultDobor100Count += 1
                dobor100CountLabel.text = "\(resultDobor100Count)"
            }
            if door.nameDoor == "Добор 150" {
                resultDobor150Count += 1
                dobor150CountLabel.text = "\(resultDobor150Count)"
            }
            if door.nameDoor == "Добор 200" {
                resultDobor200Count += 1
                dobor200CountLabel.text = "\(resultDobor200Count)"
            }
            if door.nameDoor == "Притвор" {
                resultLathCount += 1
                lathCountLabel.text = "\(resultLathCount)"
                
            }
        }
        
        
        
    }
    
    // MARK: - Navigation

   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let servicesPriceLustVC = segue.destination as? ServicesPriceViewController else {return}
        servicesPriceLustVC.person = persone
    }
    

}
