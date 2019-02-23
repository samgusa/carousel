//
//  PurchaseViewController.swift
//  carousel
//
//  Created by Sam Greenhill on 10/2/18.
//  Copyright © 2018 simplyAmazingMachines. All rights reserved.
//

import UIKit

class PurchaseViewController: UIViewController {

    
    @IBOutlet weak var nameTxt: UITextField!
    
    @IBOutlet weak var emailTxt: UITextField!
    
    var saveURL = URL(string: "http://localhost:8080/api/emails")!
    
    
    var purchaseInfo: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        self.hideKeyboard()
        
        print("PurchaseInfo: \(purchaseInfo)")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }


    @IBAction func buyBtnPressed(_ sender: Any) {
        if self.nameTxt.text == "" || self.emailTxt.text == "" {
            self.nameTxt.placeholder = "Please Enter A Name"
            self.emailTxt.placeholder = "Please Enter an Email"
        } else {
            let saveData = SaveList(name: "\(self.nameTxt.text!)", email: "\(self.emailTxt.text!)", purchase: purchaseInfo)
            var request = URLRequest(url: self.saveURL)
            
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "Main")
            
            request.httpMethod = "POST"
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            
            if let data = try? JSONEncoder().encode(saveData) {
                request.httpBody = data
            }
            
            URLSession.shared.dataTask(with: request) { data, response, error in
                if let error = error {
                    print(error.localizedDescription)
                    return
                }
            }.resume()
            
            self.present(vc!, animated: true, completion: nil)
        }
    }
    
    
    
    
    
    
    
}


extension PurchaseViewController {
    func hideKeyboard() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(PurchaseViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}






































