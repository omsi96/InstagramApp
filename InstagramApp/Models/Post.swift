//
//  Post.swift
//  InstagramApp
//
//  Created by Omar Alibrahim on 2/3/20.
//  Copyright © 2020 Omsi. All rights reserved.
//

import Foundation


struct Post: Codable{
    var imageName: String
    var comments: [Comment]
    var numberOfLikes: Int 
}



let posts: [Post] = [
    Post(imageName: "post1", comments:
        [Comment(username: "dalal",
                 message: "عجيب",
                 date: Date()),
         Comment(username: "hasan",
                 message: "خايس",
                 date: Date())],
         numberOfLikes: 3),
    
    Post(imageName: "post2", comments:
        [Comment(username: "fatima",
                 message: "روعة! ماشاءالله",
                 date: Date()),
         Comment(username: "hasan",
                 message: "جميل جداً تبارك الرحمن",
                 date: Date())],
         numberOfLikes: 4)


]
