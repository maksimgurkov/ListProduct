//
//  SpecialisrRegistrationViewController.swift
//  ListProduct
//
//  Created by Максим Гурков on 31.08.2022.
//

import UIKit

class SpecialisrRegistrationViewController: UIViewController {
    
    @IBOutlet weak var photoSpecialistButton: UIButton!
    @IBOutlet weak var saveSpecialistInfoButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Регистрация"
        photoSpecialistButton.layer.cornerRadius = 8
        saveSpecialistInfoButton.layer.cornerRadius = 8

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
