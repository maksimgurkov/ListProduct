//
//  Set.swift
//  ListProduct
//
//  Created by Максим Гурков on 21.07.2022.
//

import Foundation

class Sets {
    let factory: SetFactory
    let category: SetCategory
    let name: String
    let description: String
    let countSet: Int
    let priceSet: Int
    
    init(factory: SetFactory, category: SetCategory, name: String, description: String, count: Int, price: Int) {
        self.factory = factory
        self.category = category
        self.name = name
        self.description = description
        self.countSet = count
        self.priceSet = price
    }
    
    static func forSet() -> [Sets] {
        let sets = DataManagerSets.sherad.sets
        return sets
    }
    
    
}

enum SetFactory: String {
    case punto = "Punto"
    case fuaro = "Fuaro"
}

enum SetCategory: String {
    case luop = "Петля"
    case handle = "Ручка"
    case castle = "Защелка L40"
    case cstleWC = "Защелка L70"
    case stopWC = "Фиксатор"
    case set = "Комплет Prima"
}
