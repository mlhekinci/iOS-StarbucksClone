//
//  CategoryTableViewCell.swift
//  StarbuckClone
//
//  Created by Betul Basar on 27.08.2022.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        categoryImage.layer.masksToBounds = true
        categoryImage.layer.cornerRadius = 72 / 2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
}
