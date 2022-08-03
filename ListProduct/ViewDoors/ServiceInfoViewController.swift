//
//  ServiceInfoViewController.swift
//  ListProduct
//
//  Created by Максим Гурков on 03.08.2022.
//

import UIKit

class ServiceInfoViewController: UIViewController {
    
    var service: Service!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = service.nameServices

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
