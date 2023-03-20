//
//  LoginVC.swift
//  YummyCookingRecipe
//
//  Created by BerkH on 18.03.2023.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func logginButton(_ sender: Any) {
        performSegue(withIdentifier: "homePageSegue", sender: self)
    }
    
    
}
