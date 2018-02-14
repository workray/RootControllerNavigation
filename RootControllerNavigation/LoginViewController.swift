//
//  LoginViewController.swift
//  RootControllerNavigation
//
//  Created by Mobdev125 on 2/14/18.
//  Copyright © 2018 Mobdev125. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        title = "Login Screen"
        
        let loginButton = UIBarButtonItem(title: "Log In", style: .plain, target: self, action: #selector(login))
        navigationItem.setLeftBarButton(loginButton, animated: true)
    }
    
    @objc
    private func login() {
        UserDefaults.standard.set(true, forKey: "LOGGED_IN")
        AppDelegate.shared.rootViewController.switchToMainScreen()
    }
}
