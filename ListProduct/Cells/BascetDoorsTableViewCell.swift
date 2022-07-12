//
//  BascetDoorsTableViewCell.swift
//  ListProduct
//
//  Created by Максим Гурков on 06.07.2022.
//

import UIKit

class BascetDoorsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var factoryDoorLabel: UILabel!
    @IBOutlet weak var materialDoorLabel: UILabel!
    @IBOutlet weak var nameDoorLabel: UILabel!
    @IBOutlet weak var dimensionsDoorLabel: UILabel!
    @IBOutlet weak var countDoorLabel: UILabel!
    @IBOutlet weak var priceDoorLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
    
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
