//
//  SetsProductTableViewCell.swift
//  ListProduct
//
//  Created by Максим Гурков on 21.07.2022.
//

import UIKit

class SetsProductTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageProductSet: UIImageView!
    @IBOutlet weak var nameProductSetLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }

}
