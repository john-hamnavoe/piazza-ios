//
//  BaseNavigationController.swift
//  Piazza
//
//  Created by John Wallace on 25/05/2023.
//

import UIKit

class BaseNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureNavigationBar()
    }
    
    private func configureNavigationBar() {
        let navigationBarAppearance = UINavigationBarAppearance()
        navigationBarAppearance.configureWithOpaqueBackground()
        navigationBar.prefersLargeTitles = true
        navigationBar.standardAppearance = navigationBarAppearance
        navigationBar.compactAppearance = navigationBarAppearance
        navigationBar.scrollEdgeAppearance = navigationBarAppearance
    }

}
