//
//  PersonCellTableViewCell.swift
//  MyPriceList
//
//  Created by Максим Гурков on 28.06.2022.
//

import UIKit

class PersonCellTableViewCell: UITableViewCell {

    @IBOutlet weak var fulNamePersonLabel: UILabel!
    @IBOutlet weak var surNamePersonLabel: UILabel!
    @IBOutlet weak var datePersonLabel: UILabel!
    @IBOutlet weak var fulAddressPersonLabel: UILabel!
    @IBOutlet weak var colorViewPerson: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        colorViewPerson.layer.cornerRadius = 8
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
