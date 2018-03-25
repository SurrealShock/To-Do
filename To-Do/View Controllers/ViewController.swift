//
//  ViewController.swift
//  To-Do
//
//  Created by Adrian Avram on 3/24/18.
//  Copyright © 2018 OverLakeside. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet weak var section: UITableView!
    var sections = ["hi", "awee", "is", "gya"]
    var tableIndex = -1
    @IBOutlet weak var topViewHeight: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        section.delegate = self
        section.dataSource = self

        self.navigationController?.navigationBar.isHidden = true
        topViewHeight.constant = (self.view.frame.size.height / 4.5) - 10
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationView : DetailViewController = segue.destination as! DetailViewController
        destinationView.dataIndex = tableIndex
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        tableIndex = indexPath.row
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ViewControllerTableViewCell

        cell.sectionLabel?.text = sections[indexPath.row]

        return cell;
    }

}
