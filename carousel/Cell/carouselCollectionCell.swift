//
//  carouselCollectionCell.swift
//  carousel
//
//  Created by Sam Greenhill on 9/18/18.
//  Copyright © 2018 simplyAmazingMachines. All rights reserved.
//

import UIKit

class carouselCollectionCell: UICollectionViewCell {

    var information: Information! {
        didSet {
            updateUI()
        }
    }
    
    
    
    
    @IBOutlet weak var carouselImage: UIImageView!
    
    @IBOutlet weak var infoOneLbl: UILabel!
    
    
    @IBOutlet weak var infoTwoLbl: UILabel!
    
    @IBOutlet weak var priceLbl: UILabel!
    
    
    @IBOutlet weak var buyBtn: UIButton!
    
    
    fileprivate func updateUI() {
        //carouselImage.image! = information.image
        infoOneLbl.text = information.infoOne
        infoTwoLbl.text = information.infoTwo
        priceLbl.text = information.price
        buyBtn.titleLabel?.text = information.button
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    @IBAction func buyBtnPressed(_ sender: Any) {
        print("Information: \(information.image)")
    }
    
    
    
    
}
