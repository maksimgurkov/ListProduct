//
//  Person.swift
//  MyPriceList
//
//  Created by Максим Гурков on 28.06.2022.
//

import Foundation
import RealmSwift
import UIKit

class Specialist: Object {
    @Persisted var surName = ""
    @Persisted var name = ""
    @Persisted var patronymic = ""
    @Persisted var imageSpecialist = ""
    @Persisted var bazaDoor = List<Person>()
}

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
    @Persisted var sumPo = 0
    @Persisted var salse = 0
    @Persisted var data = Date()
    @Persisted var basketDoorTree = List<NewMaterialPerson>()
    @Persisted var basketServiceTree = List<Services>()
    @Persisted var bascetMetallDoor = List<MetallDoor>()
    @Persisted var bascetMetallService = List<ServiceMetall>()
    
}

class NewMaterialPerson: Object {
    @Persisted var factory = ""
    @Persisted var material = ""
    @Persisted var nameMaterial = ""
    @Persisted var dopNameMaterial = ""
    @Persisted var descriptionDoor = ""
    @Persisted var price = 0
    @Persisted var dimensions = ""
    @Persisted var flag = false
    @Persisted var countMaterial = 0
}

class Services: Object {
    @Persisted var name = ""
    @Persisted var count = 0
    @Persisted var descriptionService = ""
    @Persisted var price = 0
    
}

class MetallDoor: Object {
    @Persisted var nameDoor = ""
}

class ServiceMetall: Object {
    @Persisted var nameServiceMetall = ""
}
