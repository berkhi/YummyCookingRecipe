//
//  ViewController.swift
//  YummyCookingRecipe
//
//  Created by BerkH on 18.03.2023.
//

import UIKit

class LoginOrSignup: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginButton(_ sender: Any) {
        performSegue(withIdentifier: "logginPageSegue", sender: self)

    }
    
    @IBAction func signupButton(_ sender: Any) {
        performSegue(withIdentifier: "signupPageSegue", sender: self)

    }


}

