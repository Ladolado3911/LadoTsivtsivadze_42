//
//  navController.swift
//  LadoTsivtsivadze_42
//
//  Created by lado tsivtsivadze on 6/29/21.
//

import UIKit

class navController: UINavigationController {
    
    override var childForStatusBarStyle: UIViewController? {
        topViewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
            

        // Do any additional setup after loading the view.
    }
}
