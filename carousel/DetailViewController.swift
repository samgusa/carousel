//
//  DetailViewController.swift
//  carousel
//
//  Created by Sam Greenhill on 9/26/18.
//  Copyright © 2018 simplyAmazingMachines. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    

    @IBOutlet weak var infoImage: UIImageView!
    
    @IBOutlet weak var dataTxtView: UITextView!
    
    
    var testingImage: UIImage = UIImage()
    
    var infomation: Information! {
        didSet {
            updateUI()
        
        }
    }
    
    var infoStr: String = ""
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("***********TESTINGIMAGE: \(infomation.image!)***********")
        
        infoImage.image = infomation.image!
        infoStr = "\(infomation.imageStr)"
        print("INFOSTR: \(infoStr)")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }

    fileprivate func updateUI() {
    }
    
    
    

    @IBAction func buyBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: "buySegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nxtVC = segue.destination as? PurchaseViewController
        nxtVC?.purchaseInfo = infoStr
    }

}
