//
//  DataService.swift
//  coder-swag
//
//  Created by AlexanderN on 21.09.17.
//  Copyright © 2017 AlexanderN. All rights reserved.
//

import Foundation

class DataService {
    static let instanse = DataService()
    
    private let categoties = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    func getCategories() -> [Category] {
        return categoties
    }
}
