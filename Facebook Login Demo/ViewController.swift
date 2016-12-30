//
//  ViewController.swift
//  Facebook Login Demo
//
//  Created by Royce on 30/12/2016.
//  Copyright © 2016 Ryetech. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let user = FBSDKAccessToken.current() {
            let label = UILabel(
                frame: CGRect(x: 0,
                              y: 0,
                              width: self.view.frame.width,
                              height: 30)
            )
            
            label.textAlignment = NSTextAlignment.center
            
            if let userId = user.userID {
                label.text = "Welcome back, \(userId)!"
            } else {
                label.text = "Welcome back, mysterio!"
            }
            label.center = self.view.center
            self.view.addSubview(label)
            
        } else {
            let loginButton = FBSDKLoginButton()
            loginButton.center = self.view.center;
            self.view.addSubview(loginButton)
        }
        
    }

}

