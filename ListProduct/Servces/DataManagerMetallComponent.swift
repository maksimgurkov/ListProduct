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
        MetallDoorComponent(nameComponent: .dimension, discriptionComponent: "860*2060", infoComponent: ""),
        MetallDoorComponent(nameComponent: .dimension, discriptionComponent: "960*2060", infoComponent: ""),
        MetallDoorComponent(nameComponent: .dimension, discriptionComponent: "Внести размер самому", infoComponent: ""),
        MetallDoorComponent(nameComponent: .framuga, discriptionComponent: "Внести размер фрамуги" , infoComponent: ""),
        MetallDoorComponent(nameComponent: .prifile, discriptionComponent: "П-59", infoComponent: ""),
        MetallDoorComponent(nameComponent: .prifile, discriptionComponent: "П-7", infoComponent: ""),
        MetallDoorComponent(nameComponent: .prifile, discriptionComponent: "П-10", infoComponent: "")
    ]
    
    private init() {}
    
}
