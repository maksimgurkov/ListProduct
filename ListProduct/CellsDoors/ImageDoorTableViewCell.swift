//
//  ImageDoorTableViewCell.swift
//  MyPriceList
//
//  Created by Максим Гурков on 04.07.2022.
//

import UIKit

class ImageDoorTableViewCell: UITableViewCell {

    @IBOutlet weak var doorImage: UIImageView!
    @IBOutlet weak var nameDoorLabel: UILabel!
    @IBOutlet weak var colorProductView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        colorProductView.layer.cornerRadius = 8
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
