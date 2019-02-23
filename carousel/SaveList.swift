//
//  SaveList.swift
//  carousel
//
//  Created by Sam Greenhill on 10/2/18.
//  Copyright © 2018 simplyAmazingMachines. All rights reserved.
//

import Foundation

struct SaveList: Codable {
    var id: Int?
    var name: String
    var email: String
    var purchase: String
}

extension SaveList {
    init(name: String, email: String, purchase: String) {
        self.name = name
        self.email = email
        self.purchase = purchase

    }
}
