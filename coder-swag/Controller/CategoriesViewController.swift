//
//  ViewController.swift
//  coder-swag
//
//  Created by AlexanderN on 20.09.17.
//  Copyright © 2017 AlexanderN. All rights reserved.
//

import UIKit

class CategoriesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    @IBOutlet weak var categoryTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instanse.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryTableViewCell {
            let category = DataService.instanse.getCategories()[indexPath.row]
            cell.updateViewsOnTheCells(category: category)
            return cell
        } else {
            return CategoryTableViewCell()
        }
    }

}

