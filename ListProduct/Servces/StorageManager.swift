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
    
    func save(_ person: Person) {
        write {
            realm.add(person)
        }
    }
    
    
    
    func delete(_ person: Person) {
        write {
            realm.delete(person)
        }
    }
    
    func edit(_ door: Doors, newValue: Int) {
        write {
            door.countDoors += newValue
        }
    }
    
    func saveProduct(_ persone: Person, door: Doors) {
        write {
            persone.basket.append(door)
        }
    }
    
    func saveSerwice(_ persone: Person, service: Services) {
        write {
            persone.basketService.append(service)
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
