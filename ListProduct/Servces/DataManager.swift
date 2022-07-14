//
//  DataManager.swift
//  MyPriceList
//
//  Created by Максим Гурков on 30.06.2022.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let dors = [
        Door(factory: .luxor,
             material: .shpone,
             nameDoor: "Венеция",
             descriptionDoor: "",
             specifications: "",
             price: 5000,
             dimensions: "550*1900",
             flag: false),
        Door(factory: .onyx,
             material: .shpone,
             nameDoor: "ДПГ",
             descriptionDoor: "",
             specifications: "",
             price: 5000,
             dimensions: "600*2000",
             flag: false),
        Door(factory: .luxor,
             material: .ecoShpone,
             nameDoor: "Lu-21 Беленый дуб",
             descriptionDoor: "Экошпон это многослойное декоративное покрытие с эффектом натурального шпона. Структура материала с актуальным трехмерным оптическим эффектом в точности передает все особенности структуры древесины.",
             specifications: """
                                Страна: Россия
                                Материал: МДФ
                                Производитель: Luxor
                                Стиль: Модерн
                                Толщина полотна: 36 мм
                                Каркас: Переклеенный массив древесины, МДФ
                                Покрытие: Экошпон
                                Внутреннее заполнение: МДФ
                                Кромка: Выполнена по технологии окутывания
                                Погонаж: В тон полотна
                                Ручка: Подбирается индивидуально
                                Петли: Подбирается индивидуально
                                Изготовление по ГОСТу: 475-2016, 6629-88
                                """,
             price: 5000,
             dimensions: "550*1900",
             flag: false),
        Door(factory: .sodrugestvo,
             material: .ecoShpone,
             nameDoor: "Эко-2",
             descriptionDoor: "",
             specifications: "",
             price: 5000,
             dimensions: "550*1900",
             flag: false),
        Door(factory: .holl,
             material: .ecoShpone,
             nameDoor: "Эко",
             descriptionDoor: "",
             specifications: "",
             price: 5000,
             dimensions: "550*1900",
             flag: false)
    ]
    
    private init() {}
}
