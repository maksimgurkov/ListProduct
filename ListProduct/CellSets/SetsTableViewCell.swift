//
//  SetsTableViewCell.swift
//  ListProduct
//
//  Created by Максим Гурков on 21.07.2022.
//

import UIKit

class SetsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageFactory: UIImageView!
    @IBOutlet weak var factoryLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
