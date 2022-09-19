//
//  Material.swift
//  ListProduct
//
//  Created by Максим Гурков on 19.09.2022.
//

import Foundation

class DopMaterial {
    let factory: String
    let material: String
    let nameMaterial: String
    let dimansion: String
    let specifications: String
    let price: Int
    let flag: Bool
    
    init(factory: String, material: String, nameMaterial: String, dimansion: String, specifications: String, price: Int, flag: Bool) {
        self.factory = factory
        self.material = material
        self.nameMaterial = nameMaterial
        self.dimansion = dimansion
        self.specifications = specifications
        self.price = price
        self.flag = flag
    }
    
    static func forDopMaterial() -> [DopMaterial] {
        DataDopMaterial.share.materials
    }
}
