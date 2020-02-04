//
//  Posts.swift
//  InstagramApp
//
//  Created by Omar Alibrahim on 2/3/20.
//  Copyright © 2020 Omsi. All rights reserved.
//

import Foundation
import Firebase
import CodableFirebase
extension Networking
{
    static func createPost(){}
    static func retreiveAllPosts(success: @escaping()->()){
        
        
        let ref = Firestore.firestore().collection("posts")
        
        ref.getDocuments { (documents, error) in
            guard let documents = documents else {return}
                /// Made this one liner using ```map```
                let posts = try! FirebaseDecoder().decode([Post].self, from: documents.documents.map{$0.data()})
                print("🎉All posts:\n", posts)
                /// The following using for loop
//                for document in documents.documents
//                {
//                    let model = try! FirestoreDecoder().decode(Post.self, from: document.data())
//                    print("Model: \(model)")
//                }
//            } else {
//                print("Document does not exist")
//            }
//            guard error == nil else {
//                return
//            }
//            guard let query = query else {
//                return
//            }
            // query exists
            
//            let value = query.value
            
//            let posts = query.documents.map { snapshot -> Post in
//                let imageName = snapshot.data()["imageName"]
//                let numberOfLikes = snapshot.data()["numberOfLikes"]
//                let commentsDic = snapshot.data()["comments"] as! [[String: Any]]
//                let comments = commentsDic.map { commentsDic -> Comment in
//                    Comment(username: commentsDic["username"], message: commentsDic["message"], date: commentsDic["date"])
//                }
//
////                Post(imageName: , comments: <#T##[Comment]#>, numberOfLikes: <#T##Int#>)
//            }
            
        }
        
        
        
    }
    static func commentOnPost(){}
    static func likePost(){}
}
