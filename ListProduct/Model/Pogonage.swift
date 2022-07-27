//
//  Pogonage.swift
//  ListProduct
//
//  Created by Максим Гурков on 27.07.2022.
//

import Foundation

class Pogonage {
    let factory: FactoryPjgonage
    let material: MaterialPogonage
    let nameDoor: String
    let dimansion: String
    let specifications: String
    let price: Int
    let flag: Bool
    
    
    static func forPogonages() -> [Pogonage] {
        let door = DataManagerPogonage.sharet.pogonages
        return door
    }
    
    init(factory: FactoryPjgonage, material: MaterialPogonage, nameDoor: String, dimansion: String, specifications: String, price: Int, flag: Bool) {
        self.factory = factory
        self.material = material
        self.nameDoor = nameDoor
        self.dimansion = dimansion
        self.specifications = specifications
        self.price = price
        self.flag = flag
    }
}

enum FactoryPjgonage: String {
    case luxor = "Luxor"
    case onyx = "Оникс"
    case sodrugestvo = "Cодружество"
    case holl = "Холл"
}

enum MaterialPogonage: String {
    case shpone = "Шпон"
    case ecoShpone = "ЭкоШпон"
}
