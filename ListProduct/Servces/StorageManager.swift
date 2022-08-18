//
//  StorageManager.swift
//  MyPriceList
//
//  Created by Максим Гурков on 28.06.2022.
//

import RealmSwift

class StorageManager {
    
    static var shared = StorageManager()
    
    let realm = try! Realm()
    
    private init() {}
    
    //MARK: - Person
    func save(_ person: Person) {
        write {
            realm.add(person)
        }
    }
    
    func renamePersonSumPo(person: Person, newValue: Int) {
        write {
            person.sumPo = newValue
        }
    }
    
    func renamePersonSelse(person: Person, newValue: Int) {
        write {
            person.salse = newValue
        }
    }
    
    func delete(_ person: Person) {
        write {
            realm.delete(person)
        }
    }
    
    
    func saveProduct(_ persone: Person, door: Doors) {
        write {
            persone.basket.append(door)
        }
    }
    
    func renameDoor(_ door: Doors, doors: Door, newValue: Int) {
        write {
            door.countDoors += newValue
            door.price += doors.price * 3
        }
    }
    
    func renameDoorDelete(_ door: Doors, doors: Door, newValue: Int) {
        write {
            door.countDoors -= newValue
            door.price -= doors.price * 3
        }
    }
    
    func renameSetAppand(_ door: Doors, doors: Sets, newValue: Int) {
        write {
            door.countDoors += newValue
            door.price += doors.priceSet
        }
    }
    
    func renameSetDelete(_ door: Doors, doors: Sets, newValue: Int) {
        write {
            door.countDoors -= newValue
            door.price -= doors.priceSet * 3
        }
    }
    
    func renamePogonage(_ pogonage: Doors, pogonages: Int, newValue: Int ) {
        write {
            pogonage.countDoors += newValue
            pogonage.price += pogonages * 3
            
        }
    }
    
    func renamePogonageDelete(_ pogonage: Doors, pogonages: Int, newValue: Int ) {
        write {
            pogonage.countDoors -= newValue
            pogonage.price -= pogonages * 3
            
        }
    }
    
    func renameService(_ service: Services, services: Service, newValue: Int ) {
        write {
            service.count -= newValue
            service.price -= services.priceServices
            
        }
    }
    
    func deleteService(service: Services) {
        write {
            realm.delete(service)
        }
    }
    
    func saveSerwice(_ persone: Person, service: Services) {
        write {
            persone.basketService.append(service)
        }
    }
    
    func renameServis(_ servis: Services, services: Service, newValue: Int) {
        write {
            servis.count += newValue
            servis.price += services.priceServices
        }
    }
    
    func delete(_ door: Doors) {
        write {
            realm.delete(door)
        }
    }
    
    private func write(completion: () -> Void) {
        do {
            try realm.write{
                completion()
            }
        } catch {
            print(error)
        }
    }
}
