//
//  DetailViewController.swift
//  To-Do
//
//  Created by Adrian Avram on 3/24/18.
//  Copyright © 2018 OverLakeside. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController //, UITableViewDelegate, UITableViewDataSource
{
    
    
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var goalLabel: UILabel!
    @IBOutlet weak var topViewHeight: NSLayoutConstraint!
    @IBOutlet weak var goalTableView: UITableView!
    var dataIndex : Int = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(dataIndex)
        // Do any additional setup after loading the view.
//         topViewHeight.constant = (self.view.frame.size.height / 4.5) - 10
        
        
        // Set yourself as a delegate and datasource here:
//        goalTableView.delegate = self;
//        goalTableView.dataSource = self;
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return listGoals.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ViewControllerTableViewCell
//        cell.goalLabel.text = listGoals[indexPath.row]
//
//        return cell;
//    }
//
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
////       let selectedIndex = indexPath.row
//        performSegue(withIdentifier: "goToSpecific", sender: self)
//    }
}
