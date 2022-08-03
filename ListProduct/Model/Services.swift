//
//  Services.swift
//  ListProduct
//
//  Created by Максим Гурков on 03.08.2022.
//

import Foundation

class Service {
    
    let nameServices: String
    let descriptionServices: String
    let countServices: Int
    let priceServices: Int
    
    init(nameServices: String, descriptionServices: String, countServices: Int, priceServices: Int) {
        self.nameServices = nameServices
        self.descriptionServices = descriptionServices
        self.countServices = countServices
        self.priceServices = priceServices
    }
    
    
    static func services() -> [Service] {
         DataServices.shared.servicesList
    }
    
}
