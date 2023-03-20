//
//  FeaturedRecipesCVC.swift
//  YummyCookingRecipe
//
//  Created by BerkH on 19.03.2023.
//

import UIKit

class FeaturedRecipesCVC: UICollectionViewCell {
    
    static let identifier = "featuredRecipesCVC"
    
    static func nib() -> UINib{
        return UINib(nibName: "FeaturedRecipesCVC", bundle: nil)
    }
    
    

    @IBOutlet weak var imgMain: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
