//
//  NavigationController.swift
//  Project1
//
//  Created by Анна Никифорова on 08.04.2020.
//  Copyright © 2020 Анна Никифорова. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationBar.shadowImage = UIImage()
        self.navigationBar.tintColor = .black
    }
    
}
