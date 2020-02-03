//
//  tableViewVC.swift
//  InstagramApp
//
//  Created by Omar Alibrahim on 2/3/20.
//  Copyright © 2020 Omsi. All rights reserved.
//

import UIKit

class PostsVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! PostCell
        
        
        cell.postImageView.image = UIImage(named: posts[indexPath.row].imageName)
        
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

//        Networking.getPosts()
//            {
                // reload the table
        
        
        // Do any additional setup after loading the view.
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
