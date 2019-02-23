//
//  roundBtn.swift
//  carousel
//
//  Created by Sam Greenhill on 9/19/18.
//  Copyright © 2018 simplyAmazingMachines. All rights reserved.
//

import Foundation
import UIKit

class roundBtn: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.shadowOpacity = 0.8
        layer.shadowRadius = 5.0 //how far it blurs out
        layer.shadowOffset = CGSize(width: 1.0, height: 1.0) //the bounds the view, how far it will go
        layer.cornerRadius = 2.0
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 6, options: .allowUserInteraction, animations: {
            self.transform = CGAffineTransform.identity
        }, completion: nil)
        super.touchesBegan(touches, with: event)
    }
    
    
}
