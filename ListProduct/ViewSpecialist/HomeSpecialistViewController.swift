//
//  HomeSpecialistViewController.swift
//  ListProduct
//
//  Created by Максим Гурков on 31.08.2022.
//

import UIKit
import RealmSwift

class HomeSpecialistViewController: UIViewController {
    
    var specialists: Results<Specialist>!
    
    @IBOutlet weak var photoSpecialistImageView: UIImageView!
    @IBOutlet weak var fulNameSpecialistLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        specialists = StorageManager.shared.realm.objects(Specialist.self)
        title = "Специалист"
        fulNameSpecialistLabel.text = specialistData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        fulNameSpecialistLabel.text = specialistData()
    }
    
    private func specialistData() -> String {
        var fulName = ""
        for specialist in specialists {
            fulName = "\(specialist.surName) \(specialist.name) \(specialist.patronymic)"
        }
        return fulName
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
