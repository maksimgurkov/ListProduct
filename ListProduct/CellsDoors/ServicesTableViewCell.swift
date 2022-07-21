//
//  ServicesTableViewCell.swift
//  ListProduct
//
//  Created by Максим Гурков on 10.07.2022.
//

import UIKit

class ServicesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameServicesLabel: UILabel!
    @IBOutlet weak var descriptionServicesLabel: UILabel!
    @IBOutlet weak var countServicesLabel: UILabel!
    @IBOutlet weak var priceServicesLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
