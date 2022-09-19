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
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = material.nameMaterial
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
