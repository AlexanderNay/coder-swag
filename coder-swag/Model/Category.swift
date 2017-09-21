//
//  Category.swift
//  coder-swag
//
//  Created by AlexanderN on 21.09.17.
//  Copyright © 2017 AlexanderN. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
