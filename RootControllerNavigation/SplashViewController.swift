//
//  SplashViewController.swift
//  RootControllerNavigation
//
//  Created by Mobdev125 on 2/14/18.
//  Copyright © 2018 Mobdev125. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {
    
    private let activityIndicator = UIActivityIndicatorView(activityIndicatorStyle: .whiteLarge)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        
        view.addSubview(activityIndicator)
        
        activityIndicator.frame = view.bounds
        activityIndicator.backgroundColor = UIColor(white: 0, alpha: 0.4)
        
        makeServiceCall()
    }
    
    private func makeServiceCall() {
        activityIndicator.startAnimating()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + .seconds(1)) {
            self.activityIndicator.stopAnimating()
            if UserDefaults.standard.bool(forKey: "LOGGED_IN") {
                AppDelegate.shared.rootViewController.switchToMainScreen()
            } else {
                AppDelegate.shared.rootViewController.showLoginScreen()
            }
        }
    }
}

