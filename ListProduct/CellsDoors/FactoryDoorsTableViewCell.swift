//
//  FactoryDoorsTableViewCell.swift
//  MyPriceList
//
//  Created by Максим Гурков on 30.06.2022.
//

import UIKit

class FactoryDoorsTableViewCell: UITableViewCell {

    @IBOutlet weak var factoryDoorsImage: UIImageView!
    @IBOutlet weak var nameFactoryDoorsLabel: UILabel!
    @IBOutlet weak var descriptionDoorsLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
