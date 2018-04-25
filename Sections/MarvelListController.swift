//
//  ViewController.swift
//  Sections
//
//  Created by Nuri Chun on 4/24/18.
//  Copyright © 2018 tetra. All rights reserved.
//

import UIKit

class MarvelListController: UITableViewController
{
    
    let cellId = "cellId"
    
    let twoDimensionalArray =
        [
            ["Iron Man", "Captain America", "Thor", "Black Widow", "Hawk-Eye", "Hulk", "Vision", "Black Panther"],
            ["Thanos", "Hydra", "Venmo", "Loki", "Thors Sister"],
            ["Cory", "Min", "Jerry", "Shayan"]
    ]

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.navigationItem.title = "Avengers"
        
        navigationController?.navigationBar.barTintColor = UIColor.lightGray
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedStringKey.foregroundColor : UIColor.red]
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor : UIColor.red]
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?
    {
        let label = UILabel()
        
        label.text = "SEPARATOR"
        label.textColor = UIColor.red
        
        return label
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int
    {
        return twoDimensionalArray.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return twoDimensionalArray[section].count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        
        let name = twoDimensionalArray[indexPath.section][indexPath.row]
        
        cell.textLabel?.text = "\(name) ----- SECTION: \(indexPath.section)   ROW: \(indexPath.row)"
        
        return cell
    }
    
    
    

}

