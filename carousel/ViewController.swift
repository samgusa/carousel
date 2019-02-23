//
//  ViewController.swift
//  carousel
//
//  Created by Sam Greenhill on 9/18/18.
//  Copyright © 2018 simplyAmazingMachines. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let collectionViewCellId: String = "carouselCollectionCell"
    @IBOutlet weak var collectionView: UICollectionView!

    fileprivate var information = Information.createData()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.delegate = self
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(true)
//        self.navigationController?.setNavigationBarHidden(false, animated: false)
//    }
//

}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return information.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "infoCell", for: indexPath) as! InfoCollectionViewCell
        cell.addBtnAction = {
            self.performSegue(withIdentifier: "mainSegue", sender: cell)
            
        }
        cell.infomation = self.information[indexPath.item]
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mainSegue" {
            let nxtVC = segue.destination as? DetailViewController
            
            let cell = sender as? InfoCollectionViewCell
            let myIndexPath = self.collectionView.indexPath(for: cell!)
            
            if let indexPath = myIndexPath {

                nxtVC?.infomation = information[indexPath.row]

            }
            
        }
    }
}






























