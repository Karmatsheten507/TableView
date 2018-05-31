//
//  ViewController.swift
//  TableViewProject
//
//  Created by Nando Septian Husni on 5/23/18.
//  Copyright © 2018 imastudio. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableview: UITableView!
   
    let list = ["image","image1","image2","image3","image4"]
    let detail = [2,1,2,5,8]
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
   let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
//      let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
    cell?.textLabel?.text = list[indexPath.row]
     cell?.detailTextLabel?.text = "\(detail[indexPath.row])"
        
 return cell!
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

