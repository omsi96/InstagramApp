//
//  Comment.swift
//  InstagramApp
//
//  Created by Omar Alibrahim on 2/3/20.
//  Copyright © 2020 Omsi. All rights reserved.
//

import Foundation


struct Comment: Codable{
    var username: String
    var message: String
    var date: Date?
}
