//
//  SignInVC.swift
//  InstagramApp
//
//  Created by Omar Alibrahim on 2/3/20.
//  Copyright © 2020 Omsi. All rights reserved.
//

import UIKit

class SignInVC: UIViewController {
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signIn(_ sender: Any) {
        let email = emailField.text!
        let password = passwordField.text!
        
        Networking.signIn(email: email, password: password, success: {
            // Go to the segue
            self.performSegue(withIdentifier: "signedIn", sender: nil)
        }) {
            // Fail:
            Helpers.errorMessage(title: "Ops", message: "Couldn't sign in!", presenter: self)
        }
        
    }
    
    

}
