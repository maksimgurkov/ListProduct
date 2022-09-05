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
    
    @IBOutlet weak var photoSpecialistImageView: UIImageView! {
        didSet {
            photoSpecialistImageView.layer.cornerRadius = photoSpecialistImageView.frame.width / 2
        }
    }
    @IBOutlet weak var fulNameSpecialistLabel: UILabel!
    @IBOutlet weak var registredPersonButton: UIButton!
    @IBOutlet weak var extSpecialistButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        specialists = StorageManager.shared.realm.objects(Specialist.self)
        registredPersonButton.layer.cornerRadius = 8
        countSpecialistClouced()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        countSpecialistClouced()
    }
    
    private func specialistData() -> String {
        var fulName = ""
        for specialist in specialists {
            fulName = "\(specialist.surName) \(specialist.name) \(specialist.patronymic)"
        }
        return fulName
    }
    
    private func forSpecialistImage() -> String {
        var imageSsring = ""
        for specialist in specialists {
            imageSsring = specialist.name
        }
        return imageSsring
    }
    
    private func countSpecialistClouced() {
        if !specialists.isEmpty {
            fulNameSpecialistLabel.text = specialistData()
            photoSpecialistImageView.image = UIImage(named: "\(forSpecialistImage())")
            registredPersonButton.backgroundColor = .blue
            registredPersonButton.isHidden = true
            extSpecialistButton.isHidden = false
        } else {
            fulNameSpecialistLabel.text = "Специалист Ф.И"
            extSpecialistButton.isHidden = true
        }
    }
    
}
