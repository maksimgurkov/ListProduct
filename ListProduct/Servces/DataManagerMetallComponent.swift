//
//  DataManagerMetallComponent.swift
//  ListProduct
//
//  Created by Максим Гурков on 06.09.2022.
//

import Foundation

class DataManagerMetallComponent {
    
    static let shared = DataManagerMetallComponent()
    
    let components = [
        MetallDoorComponent(nameComponent: "Размер", discriptionComponent: ""),
        MetallDoorComponent(nameComponent: "База", discriptionComponent: ""),
        MetallDoorComponent(nameComponent: "Открывание", discriptionComponent: ""),
        MetallDoorComponent(nameComponent: "Наличники", discriptionComponent: "")
    ]
    
    private init() {}
    
}
