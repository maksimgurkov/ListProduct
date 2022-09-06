//
//  MetallDoorComponent.swift
//  ListProduct
//
//  Created by Максим Гурков on 06.09.2022.
//

import Foundation

class MetallDoorComponent {
    
    var nameComponent: String
    var discriptionComponent: String
    
    init(nameComponent: String, discriptionComponent: String) {
        self.nameComponent = nameComponent
        self.discriptionComponent = discriptionComponent
    }
    
    static func components() -> [MetallDoorComponent] {
        DataManagerMetallComponent.shared.components
    }
    
}

enum ComponentDescription: String {
    case standartDescription = "Cтандартные размеры"
    case nonStandartDescription = "Нестандартные размеры"
}
