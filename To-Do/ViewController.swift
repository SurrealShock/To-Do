//
//  ViewController.swift
//  To-Do
//
//  Created by Adrian Avram on 3/24/18.
//  Copyright © 2018 OverLakeside. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var topViewHeight: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.navigationBar.isHidden = true
        topViewHeight.constant = (self.view.frame.size.height / 4.5) - 10
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
