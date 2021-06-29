//
//  SecondPageController.swift
//  LadoTsivtsivadze_42
//
//  Created by lado tsivtsivadze on 6/29/21.
//

import UIKit

class SecondPageController: UIViewController {
    
    private let bezierPath = UIBezierPath()
    private var shapeLayer = CAShapeLayer()
    
    @IBOutlet weak var imgVIew: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        //setUpViewonImage()
        setUpImageGradient()
        
        
    }
    
    func setUpImageGradient() {
        let view  = UIView(frame: imgVIew.bounds)
        let gradient = CAGradientLayer()
        gradient.frame = view.frame

        let color1 = UIColor.white.withAlphaComponent(0).cgColor
        let color2 = UIColor.white.withAlphaComponent(1).cgColor
    
        gradient.colors = [color1, color2]
        gradient.startPoint = CGPoint(x: 0.5, y: 0.98)
        gradient.endPoint = CGPoint(x: 0.5, y: 1)
        
        view.layer.insertSublayer(gradient, at: 0)

        imgVIew.addSubview(view)
        imgVIew.bringSubviewToFront(view)
    }
    
//    func setUpViewonImage() {
//        let view = UIView(frame: imgVIew.bounds)
//        shapeLayer.fillColor = UIColor.white.withAlphaComponent(0.5).cgColor
//
//        bezierPath.move(to: .zero)
//        bezierPath.addLine(to: CGPoint(x: 150, y: 0))
//        bezierPath.addLine(to: CGPoint(x: view.frame.maxX, y: 30))
//        bezierPath.addLine(to: CGPoint(x: view.frame.maxX, y: view.frame.maxY))
//        bezierPath.addLine(to: CGPoint(x: 0, y: view.frame.maxY))
//        bezierPath.addLine(to: .zero)
//
//        shapeLayer.path = bezierPath.cgPath
//        shapeLayer.frame = view.bounds
//
//        view.layer.addSublayer(shapeLayer)
//        imgVIew.addSubview(view)
//        imgVIew.bringSubviewToFront(view)
//    }
}
