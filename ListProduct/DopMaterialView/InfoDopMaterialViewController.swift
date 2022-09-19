//
//  InfoDopMaterialViewController.swift
//  ListProduct
//
//  Created by Максим Гурков on 19.09.2022.
//

import UIKit

class InfoDopMaterialViewController: UIViewController {
    
    var person = Person()
    var material: DopMaterial!
    
    @IBOutlet weak var imageDopMaterialImage: UIImageView!
    @IBOutlet weak var InfoMaterialLabel: UILabel!
    @IBOutlet weak var appendMaterialButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = material.nameMaterial
        imageDopMaterialImage.layer.cornerRadius = 8
        appendMaterialButton.layer.cornerRadius = 8
        imageDopMaterialImage.image = UIImage(named: material.nameMaterial)
        InfoMaterialLabel.text = material.dimansion
    }
    
}
