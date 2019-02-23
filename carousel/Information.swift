//
//  Information.swift
//  carousel
//
//  Created by Sam Greenhill on 9/18/18.
//  Copyright © 2018 simplyAmazingMachines. All rights reserved.
//

import Foundation
import UIKit


class Information {
    
    
    var image: UIImage!
    var imageStr = ""
    var button = ""
    var infoOne = ""
    var infoTwo = ""
    var price = ""
    
    init(image: UIImage!, imageStr: String, button: String, infoOne: String, infoTwo: String, price: String) {
        self.image = image
        self.imageStr = imageStr
        self.button = button
        self.infoOne = infoOne
        self.infoTwo = infoTwo
        self.price = price
    }
    
    //MARK: Carousel Data
    
    static func createData() -> [Information] {
        
        return [
            Information(image:  UIImage(named: "seed")!, imageStr: "seed", button: "Buy One", infoOne: "First Data", infoTwo: "Second Data", price: "10"),
            Information(image: UIImage(named: "plant")!, imageStr: "plant", button: "Buy Two", infoOne: "First Data", infoTwo: "Second Data", price: "20"),
            Information(image: UIImage(named:"tree")!, imageStr: "tree", button: "Buy Three", infoOne: "First Data", infoTwo: "Second Data", price: "30"),
            Information(image: UIImage(named: "forest")!, imageStr: "forest", button: "Buy Four", infoOne: "First Data", infoTwo: "Second Data", price: "40")
        
        
        ]
    }
    
    
    
}
