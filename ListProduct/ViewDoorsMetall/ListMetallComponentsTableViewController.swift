//
//  ListMetallComponentsTableViewController.swift
//  ListProduct
//
//  Created by Максим Гурков on 06.09.2022.
//

import UIKit

class ListMetallComponentsTableViewController: UITableViewController {
    
    var components = MetallDoorComponent.components()
    
    private var componentDoorString: [String] = []
    private var componentDoor: [MetallDoorComponent] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Список категорий компонентов"
        componetsNameDoor()

    }
    
    private func componetsNameDoor() {
        for component in components {
            if !componentDoorString.contains(component.nameComponent.rawValue) {
                componentDoorString.append(component.nameComponent.rawValue)
            }
        }
    }
    
    private func getComponentMetallDoor() {
            guard let index = tableView.indexPathForSelectedRow else { return }
            componentDoor = []
            for component in components {
                if component.nameComponent.rawValue == componentDoorString[index.row] {
                    componentDoor.append(component)
                }
            }
        }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return componentDoorString.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "metallDoor", for: indexPath)
        let component = componentDoorString[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = component
        cell.contentConfiguration = content

        return cell
    }
        
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let infoVC = segue.destination as? ComponentTableViewController else { return }
        getComponentMetallDoor()
        infoVC.component = componentDoor
    }
    

}
