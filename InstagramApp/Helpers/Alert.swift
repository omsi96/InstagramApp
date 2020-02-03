//
//  Alert.swift
//  InstagramApp
//
//  Created by Omar Alibrahim on 2/3/20.
//  Copyright © 2020 Omsi. All rights reserved.
//

import Foundation
import UIKit

extension Helpers
{
    
    static func errorMessage(title: String, message: String, presenter: UIViewController)
    {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .cancel)
        alertController.addAction(okAction)
        presenter.present(alertController, animated: true)
    }

}
