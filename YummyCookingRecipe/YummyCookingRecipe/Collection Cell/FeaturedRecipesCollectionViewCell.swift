//
//  FeaturedRecipesCollectionViewCell.swift
//  YummyCookingRecipe
//
//  Created by BerkH on 18.03.2023.
//

import UIKit

class FeaturedRecipesCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    
    static let identifier = "FeaturedRecipesCollectionViewCell"
    
    static func nib() -> UINib{
        
        return UINib(nibName: "FeaturedRecipesCollectionViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    public func configure(with model: Model){
        self.imageView.image = UIImage(named: model.imageName)
        self.imageView.contentMode = .scaleAspectFit
    }

}
