//
//  ProductCollectionViewCell.swift
//  coder-swag
//
//  Created by AlexanderN on 21.09.17.
//  Copyright © 2017 AlexanderN. All rights reserved.
//

import UIKit

class ProductCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func updateViews(product: Product) {
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
    }
    
}
