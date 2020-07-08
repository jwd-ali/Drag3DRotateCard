//
//  Rotate3DImageView.swift
//  ThreeDFlip
//
//  Created by Jawad Ali on 07/07/2020.
//  Copyright © 2020 Jawad Ali. All rights reserved.
//

import UIKit
@IBDesignable
public class Rotate3DImageView: UIImageView {
    
    private var startedAngel: CGFloat = 0
    @IBInspectable private var frontImageName: String!
    @IBInspectable private var backImageName: String!
    
    private lazy var panGesture : UIPanGestureRecognizer = {
        let pan = UIPanGestureRecognizer(target: self, action: #selector(handlePan))
        pan.cancelsTouchesInView = false
        return pan
    }()
    
    convenience public init?(frontImage name: String, backImage: String, contentMode: UIView.ContentMode = .scaleAspectFit) {
        
        self.init(image:UIImage(named: name))
        frontImageName = name
        backImageName = backImage
        
        self.contentMode = contentMode
        translatesAutoresizingMaskIntoConstraints = false
        layer.zPosition = 800
    }
    
  
    
    public override func didMoveToSuperview() {
        superview?.addGestureRecognizer(panGesture)
    }
    
    @objc private func handlePan(panGesture: UIPanGestureRecognizer) {
        let translation = panGesture.translation(in: superview!)
        
        if panGesture.state == .ended {
            
            startedAngel = startedAngel + translation.x
            let angle: CGFloat = atan2(self.layer.transform.m12, self.layer.transform.m11)
            
            if angle < 1 {
                startedAngel = 0
            } else {
                startedAngel = 180
            }
            
            applyTransform(angel: startedAngel == 0 ? 0: .pi, animated: true)
            
        }
        
        if panGesture.state == .changed {
            
            let angel = (startedAngel + translation.x).deg2rad()
            applyTransform(angel: angel, animated: false)
            
        }
        
    }
    
    private func applyTransform(angel : CGFloat, animated: Bool) {
        
        var rotationAndPerspectiveTransform : CATransform3D = CATransform3DIdentity
        rotationAndPerspectiveTransform.m34 = 1.0 / -1000
        rotationAndPerspectiveTransform = CATransform3DRotate(rotationAndPerspectiveTransform,  angel , 0.0, 1.0, 0.0)
        
        let transformangle: CGFloat = atan2(self.layer.transform.m12, self.layer.transform.m11)
        
        if transformangle == 0.0 {
            self.image = UIImage(named: frontImageName)
        } else {
            self.image = UIImage(named: backImageName)
        }
        
        if animated {
            UIView.animate(withDuration: 0.5, animations: {
                self.layer.transform = rotationAndPerspectiveTransform
            })
            
        } else {
            CATransaction.begin()
            self.layer.transform = rotationAndPerspectiveTransform
            CATransaction.commit()
        }
    }
    
    func resetRotatedImage() {
        startedAngel = 0
        applyTransform(angel: 0, animated: false)
    }
    
}
extension CGFloat {
    func deg2rad() -> CGFloat {
        return self * .pi / 180
    }
}


