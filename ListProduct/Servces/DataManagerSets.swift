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
             description: """
                        Универсальная дверная петля Punto 4B изготовлена из стали, подходит для дверей левого и правого открывания. Гальваническое покрытие прошло тест на устойчивость к коррозии в соляном тумане и соответствует 1 классу ГОСТ. В петле установлены втулка-подшипники и стальной стержень, что обеспечивает работоспособность 200 000 циклов открывания/закрывания. Максимальная нагрузка на 2 петли 40 кг, на 3 петли 60 кг. Размер петли: 100x70x2,5. Цвет: бронза. Саморезы в цвет изделия в комплекте. Упаковка: картон.
                        """,
             count: 1,
             price: 450),
        Sets(factory: .punto,
             category: .luop,
             name: "Петля Хром (Punto)",
             description: "",
             count: 1,
             price: 450),
        Sets(factory: .punto,
             category: .luop,
             name: "Петля Бронза (Punto)",
             description: "",
             count: 1,
             price: 450),
        Sets(factory: .fuaro,
             category: .luop,
             name: "Петля Золото (Fuaro)",
             description: "",
             count: 1,
             price: 450),
        Sets(factory: .fuaro,
             category: .luop,
             name: "Петля Хром (Fuaro)",
             description: "",
             count: 1,
             price: 450),
        Sets(factory: .fuaro,
             category: .luop,
             name: "Петля Бронза (Fuaro)",
             description: "",
             count: 1,
             price: 450),
        Sets(factory: .punto,
             category: .handle,
             name: "Rex Бронза (Punto)",
             description: "",
             count: 1,
             price: 450),
        
    ]
    
    
    private init() {}
}
