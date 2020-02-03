//
//  SignInVC.swift
//  InstagramApp
//
//  Created by Omar Alibrahim on 2/3/20.
//  Copyright © 2020 Omsi. All rights reserved.
//

import UIKit

class SignUpVC: UIViewController {
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var confirmPasswordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func signUp(_ sender: Any) {
        let email = emailField.text!
        let password = passwordField.text!
        let confirmationPassword = confirmPasswordField.text!
        
        if password == confirmationPassword
        {
            Networking.signUp(email: email, password: password, success: {
                // success:
                self.performSegue(withIdentifier: "signedUp", sender: nil)
                
            }) {
                // fails:
                 Helpers.errorMessage(title: "Ops", message: "couldn't sign in with firebase!", presenter: self)
            }
        }
        else {
            Helpers.errorMessage(title: "Ops", message: "Passwords don't match!", presenter: self)
        }
    }
    /*
     // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
