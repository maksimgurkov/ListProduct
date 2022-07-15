//
//  Person.swift
//  MyPriceList
//
//  Created by Максим Гурков on 28.06.2022.
//

import Foundation
import RealmSwift
import UIKit

class Person: Object {
    @Persisted var name = ""
    @Persisted var patronymic = ""
    @Persisted var surName = ""
    @Persisted var phone = ""
    @Persisted var town = ""
    @Persisted var strit = ""
    @Persisted var numberHouse = ""
    @Persisted var body = ""
    @Persisted var numberFlat = ""
    @Persisted var personDescription = ""
    @Persisted var data = Date()
    @Persisted var basket = List<Doors>()
    @Persisted var basketService = List<Services>()
    
}

class Doors: Object {
    @Persisted var factory = ""
    @Persisted var material = ""
    @Persisted var nameDoor = ""
    @Persisted var descriptionDoor = ""
    @Persisted var price = 0
    @Persisted var dimensions = ""
    @Persisted var flag = false
    @Persisted var countDoors = 0
}

class Services: Object {
    @Persisted var name = ""
    @Persisted var count = 0
    @Persisted var descriptionService = ""
    @Persisted var price = 0
    
}
