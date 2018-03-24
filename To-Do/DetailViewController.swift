//
//  DetailViewController.swift
//  To-Do
//
//  Created by Adrian Avram on 3/24/18.
//  Copyright © 2018 OverLakeside. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var topViewHeight: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
         topViewHeight.constant = (self.view.frame.size.height / 4.5) - 10
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
