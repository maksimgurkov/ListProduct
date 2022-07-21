//
//  DataManagerSets.swift
//  ListProduct
//
//  Created by Максим Гурков on 21.07.2022.
//

import Foundation

class DataManagerSets {
    
    static let sherad = DataManagerSets()
    
    let sets = [
        Sets(factory: .punto,
             category: .luop,
             name: "Петля Золото (Punto)",
             count: 1,
             price: 450),
        Sets(factory: .punto,
             category: .luop,
             name: "Петля Хром (Punto)",
             count: 1,
             price: 450),
        Sets(factory: .punto,
             category: .luop,
             name: "Петля Бронза (Punto)",
             count: 1,
             price: 450),
        Sets(factory: .fuaro,
             category: .luop,
             name: "Петля Золото (Fuaro)",
             count: 1,
             price: 450),
        Sets(factory: .punto,
             category: .luop,
             name: "Петля Хром (Fuaro)",
             count: 1,
             price: 450),
        Sets(factory: .punto,
             category: .luop,
             name: "Петля Бронза (Fuaro)",
             count: 1,
             price: 450),
        
    ]
    
    
    private init() {}
}
