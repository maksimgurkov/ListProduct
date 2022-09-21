//
//  Door.swift
//  MyPriceList
//
//  Created by Максим Гурков on 30.06.2022.
//

import Foundation

class Door {
    let factory: Factory
    let material: Material
    let nameDoor: String
    let descriptionDoor: String
    let specifications: String
    let price: Int
    let flag: Bool
    
    
    static func forDoors() -> [Door] {
        let door = DataManagerDoors.shared.dors
        return door
    }
    
    init(factory: Factory, material: Material, nameDoor: String, descriptionDoor: String, specifications: String, price: Int, flag: Bool) {
        self.factory = factory
        self.material = material
        self.nameDoor = nameDoor
        self.descriptionDoor = descriptionDoor
        self.specifications = specifications
        self.price = price
        self.flag = flag
    }
}

enum Factory: String {
    case luxor = "Luxor"
    case onyx = "Оникс"
    case sodrugestvo = "Cодружество"
    case holl = "Холл"
}

enum Material: String {
    case shpone = "Шпон"
    case ecoShpone = "ЭкоШпон"
    case emale = "Эмаль"
    case laminat = "Ламинат"
    case pvh = "ПВХ"
}
