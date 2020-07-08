//
//  ViewController.swift
//  Drag3DCardExample
//
//  Created by Jawad Ali on 08/07/2020.
//  Copyright © 2020 Jawad Ali. All rights reserved.
//

import UIKit
import Drag3DRotateCard

class ViewController: UIViewController {

    private var cardImage: Rotate3DImageView! = {
        let imageView = Rotate3DImageView(frontImage: "frontCard", backImage: "backCard")
        return imageView
    }()
  
    override func viewDidLoad() {

        view.setGradientBackground(colors: [#colorLiteral(red: 0.4756349325, green: 0.4756467342, blue: 0.4756404161, alpha: 1),#colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1),#colorLiteral(red: 0.370555222, green: 0.3705646992, blue: 0.3705595732, alpha: 1)])
       
        setup()
        setupConstraints()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func setup(){
        
        view.addSubview(cardImage)
        
    }
    func setupConstraints() {
       let button = UIButton()
        button.clipsToBounds = true
        cardImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        cardImage.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        cardImage.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.6).isActive = true
        cardImage.heightAnchor.constraint(equalTo: cardImage.widthAnchor, multiplier: 1.5).isActive = true
    }

}



extension UIView {
    func setGradientBackground(colors:[UIColor]) {
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = colors.map{ $0.cgColor }
        gradientLayer.locations = [0.3, 0.6, 1]
        gradientLayer.frame = bounds
        layer.insertSublayer(gradientLayer, at:0)
        
       
    }
}
