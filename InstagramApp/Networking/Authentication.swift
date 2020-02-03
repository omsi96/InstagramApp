//
//  Authentication.swift
//  InstagramApp
//
//  Created by Omar Alibrahim on 2/3/20.
//  Copyright © 2020 Omsi. All rights reserved.
//

import Foundation
import Firebase

extension Networking
{
    static func signIn(email: String, password: String, success: @escaping ()->Void, fail: @escaping()->())
    {
        Auth.auth().signIn(
            withEmail: email,
            password: password) { (auth, error) in
                if error == nil
                {
                    if let auth = auth {
                        // 100% there is no error, and users is signed in!
                        print("✅ Signe in successfully!")
                        
                        success()
                        
                        
                    }
                    else {
                        print("❌ Couldn't sign in ")
                        fail()
                    }
                }
                else{
                    print("❌ Couldn't sign in ")
                    fail()
                }
        }
    }
    
    static func signUp(email: String, password: String, success: @escaping ()->Void, fail: @escaping()->())
    {
        Auth.auth().createUser(
            withEmail: email,
            password: password) { (auth, error) in
                if error == nil
                {
                    if let auth = auth {
                        // 100% there is no error, and users is signed in!
                        print("✅ Created user successfully!")
                        success()
                    }
                    else {
                        print("❌ Couldn't sign up ")
                        fail()
                    }
                }
                else{
                    print("❌ Couldn't sign up ")
                    fail()
                }
        }
    }
    
    static func signOut()
    {
        // Do something with storyboard
        
        try! Auth.auth().signOut()
        
        
    }
}
