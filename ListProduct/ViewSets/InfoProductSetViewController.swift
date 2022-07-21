//
//  InfoProductSetViewController.swift
//  ListProduct
//
//  Created by Максим Гурков on 21.07.2022.
//

import UIKit

class InfoProductSetViewController: UIViewController {
    
    var infoProduct: Sets!

    @IBOutlet weak var imageProductSet: UIImageView!
    @IBOutlet weak var descriptionProductSetLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = infoProduct.name
        imageProductSet.image = UIImage(named: infoProduct.name)
        descriptionProductSetLabel.text = "\(infoProduct.description)"
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
