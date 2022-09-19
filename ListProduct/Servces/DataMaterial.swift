//
//  DataMaterial.swift
//  ListProduct
//
//  Created by Максим Гурков on 19.09.2022.
//

import Foundation

class DataDopMaterial {
    static var share = DataDopMaterial()
    
    let materials = [
        DopMaterial(factory: "Knauf",
                    material: "Гипсокортон",
                    nameMaterial: "Гипсокортон",
                    dimansion: "",
                    specifications: "",
                    price: 2200,
                    flag: false),
        DopMaterial(factory: "Брус",
                    material: "Брус",
                    nameMaterial: "Брус",
                    dimansion: "Брус размером 50*50",
                    specifications: "",
                    price: 1200,
                    flag: false),
        DopMaterial(factory: "Пеноблок",
                    material: "Пеноблок",
                    nameMaterial: "Пеноблок",
                    dimansion: "",
                    specifications: "",
                    price: 650,
                    flag: false)
    ]
    
    init() {}
}
