//
//  FooterCVC.swift
//  YummyCookingRecipe
//
//  Created by BerkH on 20.03.2023.
//

import UIKit

class FooterCVC: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configureView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.configureView()
    }
    
    private func configureView(){
        guard let view = self.loadViewFromNib(nibName: "CustomView") else {
            return
        }
        view.frame = self.bounds
        self.addSubview(view)
    }
    
    @IBAction func homePageButton(_ sender: Any) {
    }
    @IBAction func categoriesButton(_ sender: Any) {
    }
    
    @IBAction func favoritesButton(_ sender: Any) {
    }
    
    @IBAction func accountsButton(_ sender: Any) {
    }
}
