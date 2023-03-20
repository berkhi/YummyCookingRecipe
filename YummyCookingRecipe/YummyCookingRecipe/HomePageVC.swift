//
//  HomePageVC.swift
//  YummyCookingRecipe
//
//  Created by BerkH on 18.03.2023.
//

import UIKit

class HomePageVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var clcFeaturedRecipes: UICollectionView!
    @IBOutlet weak var clcLastest: UICollectionView!
    
    
    //var featuredModels = [Model]()
    //var lastestModels = [ModelFeatured]()
    
    var featuredList = ["image1","image1","image1"]
    var categoryList = ["healty", "healty", "healty"]
    var nameTextList = ["15 minus", "15 minus", "15 minus"]
    var difficultiesList = ["easy", "easy", "easy"]
    var portionList = ["1 person", "1 person", "1 person"]
    
    var lastestList = ["image1", "image1", "image1"]
    
    var layoutFeatured = UICollectionViewFlowLayout()
    var layoutLastest = UICollectionViewFlowLayout()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*featuredModels.append(Model(imageName: "image1"))
        featuredModels.append(Model(imageName: "image2"))
        featuredModels.append(Model(imageName: "image3"))*/
 
        
        clcFeaturedRecipes.register(FeaturedRecipesCVC.nib(), forCellWithReuseIdentifier: FeaturedRecipesCVC.identifier)
        clcFeaturedRecipes.delegate = self
        clcFeaturedRecipes.dataSource = self
        layoutFeatured.scrollDirection = .horizontal
        clcFeaturedRecipes.collectionViewLayout = layoutFeatured
        
        clcLastest.register(UINib(nibName: "LastestCVC", bundle: nil), forCellWithReuseIdentifier: "lastestCVC")
        clcLastest.delegate = self
        clcLastest.dataSource = self
        layoutLastest.scrollDirection = .vertical
        clcLastest.collectionViewLayout = layoutLastest
        
        
        
        /*
        lastestModels.append(ModelFeatured(
            imageName: "lastest1",
            categoryText: "Healty",
            nameText: "Pasta",
            cookTimeText: "15 minutes",
            difficultyText: "Easy",
            portionText: "2 People"))
        lastestModels.append(ModelFeatured(
            imageName: "lastest1",
            categoryText: "Healty",
            nameText: "Pasta",
            cookTimeText: "15 minutes",
            difficultyText: "Easy",
            portionText: "2 People"))
        lastestModels.append(ModelFeatured(
            imageName: "lastest1",
            categoryText: "Healty",
            nameText: "Pasta",
            cookTimeText: "15 minutes",
            difficultyText: "Easy",
            portionText: "2 People"))
        lastestModels.append(ModelFeatured(
            imageName: "lastest1",
            categoryText: "Healty",
            nameText: "Pasta",
            cookTimeText: "15 minutes",
            difficultyText: "Easy",
            portionText: "2 People"))
        */
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == clcFeaturedRecipes {
            return featuredList.count
        }else if collectionView == clcLastest {
            return lastestList.count
        }
        
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == clcFeaturedRecipes {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "featuredRecipesCVC", for: indexPath) as! FeaturedRecipesCVC
            cell.imgMain.image = UIImage(named: featuredList[indexPath.row])
            return cell
        }else if collectionView == clcLastest{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "lastestCVC", for: indexPath) as! LastestCVC
            cell.imgView.image = UIImage(named: lastestList[indexPath.row])
            cell.lblName.text = nameTextList[indexPath.row]
            cell.lblPortion.text = portionList[indexPath.row]
            cell.lblCategory.text = categoryList[indexPath.row]
            cell.lblDifficulty.text = difficultiesList[indexPath.row]
            cell.lblCookTime.text = nameTextList[indexPath.row]
            return cell
        }
        
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == clcFeaturedRecipes {
            return CGSize(width: 208, height: 128)
        }else if collectionView == clcLastest {
            return CGSize(width: 344, height: 232)
        }
        return CGSize()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        if collectionView == clcFeaturedRecipes{
            return UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        }else if collectionView == clcLastest{
            return UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        }
        return UIEdgeInsets()
        
        
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 16
    }


}
/*
struct Model{
    let imageName: String
    
    init(imageName: String) {
        self.imageName = imageName
    }
}
struct ModelFeatured{
    let imageName: String
    let categoryText: String
    let nameText: String
    let cookTimeText: String
    let difficultyText: String
    let portionText: String
    
    init(imageName: String, categoryText: String, nameText: String, cookTimeText: String, difficultyText: String, portionText: String) {
        self.imageName = imageName
        self.categoryText = categoryText
        self.nameText = nameText
        self.cookTimeText = cookTimeText
        self.difficultyText = difficultyText
        self.portionText = portionText
    }
}
*/
