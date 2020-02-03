//
//  Testing.swift
//  InstagramApp
//
//  Created by Omar Alibrahim on 2/3/20.
//  Copyright © 2020 Omsi. All rights reserved.
//

import Foundation
import Firebase

// Authentication

class Test
{
  
    static func signIn()
    {
        Networking.signIn(email: "omsi96@gmail.com", password: "ilovecoding", success: {
            print("perfect")
        }) {
            print("not perfect")
        }
    }
    
    
    static func getAllPosts()
    
    {
        Networking.retreiveAllPosts {
            
        }
    }
    
}
