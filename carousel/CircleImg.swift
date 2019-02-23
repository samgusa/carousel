//
//  CircleImg.swift
//  carousel
//
//  Created by Sam Greenhill on 9/23/18.
//  Copyright © 2018 simplyAmazingMachines. All rights reserved.
//

import Foundation
import UIKit

class CircleImg: UIImageView {
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.cornerRadius = self.frame.size.width / 2
        layer.cornerRadius = self.frame.size.height / 2
        clipsToBounds = true
        
    }
}
