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
    
    func specialistSave(_ specialist: Specialist) {
        write {
            realm.add(specialist)
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
    
    
    func saveNewMaterial(_ persone: Person, material: NewMaterialPerson) {
        write {
            persone.basketDoorTree.append(material)
        }
    }
    
    func renameDoor(_ door: NewMaterialPerson, doors: Door, newValue: Int) {
        write {
            door.countMaterial += newValue
            door.price += doors.price * 3
        }
    }
    
    func renameNewMaterial(_ material: NewMaterialPerson, modelMaterial: DopMaterial, newValue: Int) {
        write {
            material.countMaterial += newValue
            material.price += modelMaterial.price
        }
    }
    
    func renameDoorDelete(_ door: NewMaterialPerson, doors: Door, newValue: Int) {
        write {
            door.countMaterial -= newValue
            door.price -= doors.price * 3
        }
    }
    
    func renameSetAppand(_ door: NewMaterialPerson, doors: Sets, newValue: Int) {
        write {
            door.countMaterial += newValue
            door.price += doors.priceSet * 3
        }
    }
    
    func renameSetDelete(_ door: NewMaterialPerson, doors: Sets, newValue: Int) {
        write {
            door.countMaterial -= newValue
            door.price -= doors.priceSet * 3
        }
    }
    
    func renamePogonage(_ pogonage: NewMaterialPerson, pogonages: Int, newValue: Int ) {
        write {
            pogonage.countMaterial += newValue
            pogonage.price += pogonages * 3
            
        }
    }
    
    func renamePogonageDelete(_ pogonage: NewMaterialPerson, pogonages: Int, newValue: Int ) {
        write {
            pogonage.countMaterial -= newValue
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
            persone.basketServiceTree.append(service)
        }
    }
    
    func renameServis(_ servis: Services, services: Service, newValue: Int) {
        write {
            servis.count += newValue
            servis.price += services.priceServices
        }
    }
    
    func delete(_ door: NewMaterialPerson) {
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
