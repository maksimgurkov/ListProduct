//
//  MetallDoorComponent.swift
//  ListProduct
//
//  Created by Максим Гурков on 06.09.2022.
//

import Foundation

class MetallDoorComponent {
    
    var nameComponent: ComponentName
    var discriptionComponent: String
    var infoComponent: String
    
    init(nameComponent: ComponentName, discriptionComponent: String, infoComponent: String) {
        self.nameComponent = nameComponent
        self.discriptionComponent = discriptionComponent
        self.infoComponent = infoComponent
    }
    
    static func components() -> [MetallDoorComponent] {
        DataManagerMetallComponent.shared.components
    }
    
}

enum ComponentName: String {
    case dimension = "Размер"
    case framuga = "Фрамуга"
    case prifile = "Профиль"
}
