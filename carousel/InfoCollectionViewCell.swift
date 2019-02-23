//
//  InfoCollectionViewCell.swift
//  carousel
//
//  Created by Sam Greenhill on 9/18/18.
//  Copyright © 2018 simplyAmazingMachines. All rights reserved.
//

import UIKit

class InfoCollectionViewCell: UICollectionViewCell {
    
    var infomation: Information! {
        didSet {
            updateUI()
        }
    }
    
    var addBtnAction : (()-> ())?
    
    @IBOutlet weak var infoImage: UIImageView!
    
    @IBOutlet weak var infoLblOne: UILabel!
    
    @IBOutlet weak var infoLblTwo: UILabel!
    
    @IBOutlet weak var priceLbl: UILabel!
    
    @IBOutlet weak var buyBtn: UIButton!
    
    var purcaseStr = ""
    
    fileprivate func updateUI() {
        infoImage.image! = infomation.image!
        infoLblOne.text = infomation.infoOne
        infoLblTwo.text = infomation.infoTwo
        priceLbl.text = infomation.price
        buyBtn.setTitle(infomation.button, for: .normal)
        purcaseStr = "\(infomation.imageStr)"
    }
    
    @IBAction func buyBtnPressed(_ sender: Any) {
        //print("INFORMATION: \(infomation.image)")
        addBtnAction?()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = 5.0
        self.clipsToBounds = true
    }
    
}
extension UIImageView {
    public func maskCircle(anyImage: UIImage) {
        self.contentMode = UIViewContentMode.scaleAspectFill
        self.layer.cornerRadius = self.frame.height / 2
        self.layer.masksToBounds = false
        self.clipsToBounds = true
        
        self.image = anyImage
    }
}














