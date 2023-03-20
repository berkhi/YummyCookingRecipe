//
//  LastestCVC.swift
//  YummyCookingRecipe
//
//  Created by BerkH on 19.03.2023.
//

import UIKit

class LastestCVC: UICollectionViewCell {

    @IBOutlet weak var lblCategory: UILabel!
    
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var lblCookTime: UILabel!
    
    @IBOutlet weak var lblDifficulty: UILabel!
    
    @IBOutlet weak var lblPortion: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
