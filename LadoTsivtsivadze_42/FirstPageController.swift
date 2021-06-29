//
//  ViewController.swift
//  LadoTsivtsivadze_42
//
//  Created by lado tsivtsivadze on 6/29/21.
//

import UIKit

class FirstPageController: UIViewController {
    
    @IBOutlet weak var imgView: UIImageView!
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        setUpImageGradient()
    }
    
    func setUpImageGradient() {
        let view  = UIView(frame: imgView.bounds)
        let gradient = CAGradientLayer()
        gradient.frame = view.frame

        let color1 = UIColor.white.withAlphaComponent(0).cgColor
        let color2 = UIColor.white.withAlphaComponent(1).cgColor
    
        gradient.colors = [color1, color2]
        gradient.startPoint = CGPoint(x: 0.5, y: 0.9)
        gradient.endPoint = CGPoint(x: 0.5, y: 1)
        
        view.layer.insertSublayer(gradient, at: 0)

        imgView.addSubview(view)
        imgView.bringSubviewToFront(view)
    }
}

