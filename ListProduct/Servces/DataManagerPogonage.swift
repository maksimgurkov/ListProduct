//
//  DataManagerPogonage.swift
//  ListProduct
//
//  Created by Максим Гурков on 27.07.2022.
//

import Foundation

class DataManagerPogonage {
    
    static let sharet = DataManagerPogonage()
    
    let pogonages = [
        Pogonage(factory: .luxor,
                 material: .ecoShpone,
                 nameDoor: "Коробка",
                 dimansion: "",
                 specifications: "",
                 price: 450,
                 flag: false),
        Pogonage(factory: .luxor,
                 material: .ecoShpone,
                 nameDoor: "Наличник",
                 dimansion: "",
                 specifications: "",
                 price: 500,
                 flag: false),
        Pogonage(factory: .luxor,
                 material: .ecoShpone,
                 nameDoor: "Добор 100",
                 dimansion: "",
                 specifications: "",
                 price: 250,
                 flag: false),
        Pogonage(factory: .luxor,
                 material: .ecoShpone,
                 nameDoor: "Добор 150",
                 dimansion: "",
                 specifications: "",
                 price: 250,
                 flag: false),
        Pogonage(factory: .luxor,
                 material: .ecoShpone,
                 nameDoor: "Добор 200",
                 dimansion: "",
                 specifications: "",
                 price: 250,
                 flag: false),
        Pogonage(factory: .luxor,
                 material: .ecoShpone,
                 nameDoor: "Притвор",
                 dimansion: "",
                 specifications: "",
                 price: 250,
                 flag: false),
        Pogonage(factory: .luxor,
                 material: .shpone,
                 nameDoor: "Коробка",
                 dimansion: "",
                 specifications: "",
                 price: 500,
                 flag: false),
        Pogonage(factory: .luxor,
                 material: .shpone,
                 nameDoor: "Наличник",
                 dimansion: "",
                 specifications: "",
                 price: 1000,
                 flag: false)
    ]
    
    private init() {}
}
