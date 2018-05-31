//
//  TableViewController.swift
//  TableViewProject
//
//  Created by Nando Septian Husni on 5/23/18.
//  Copyright © 2018 imastudio. All rights reserved.
//




import UIKit

   var city = ["PUNAKHA","THIMPHU","PARO","HAA", "GASA"]

    var desc = ["Punakha is a old capital","Thimphu is the capital city","Paro is the most beautiful valley","Haa is place of army","Gasa has stone water bath"]

var myIndex = 0


class TableViewController: UITableViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
 
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return city.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = city[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
     myIndex = indexPath.row
        performSegue(withIdentifier: "move", sender: self)
    }
    }

