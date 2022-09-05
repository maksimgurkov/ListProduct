//
//  MetallDoorTableViewCell.swift
//  ListProduct
//
//  Created by Максим Гурков on 05.09.2022.
//

import UIKit

class MetallDoorTableViewCell: UITableViewCell {

    @IBOutlet weak var viewColorPersonMetall: UIView!
    @IBOutlet weak var fulNamePersonMetallLabel: UILabel!
    @IBOutlet weak var surNamePersonMetall: UILabel!
    @IBOutlet weak var fulAdresPersonMetallLabel: UILabel!
    @IBOutlet weak var dataPersonMetallLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        viewColorPersonMetall.layer.cornerRadius = 8
       
    }

    

}
