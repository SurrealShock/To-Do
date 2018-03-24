//
//  EditViewController.swift
//  To-Do
//
//  Created by Adrian Avram on 3/24/18.
//  Copyright © 2018 OverLakeside. All rights reserved.
//

import UIKit

class EditViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var goalTitle: UITextField!
    @IBOutlet weak var topViewHeight: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.goalTitle.delegate = self
        topViewHeight.constant = (self.view.frame.size.height / 4.5) - 10

        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn (_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return (true)
    }

    @IBAction func donePressed(_ sender: Any) {
        _ = navigationController?.popToRootViewController(animated: true)
        print("Pressed")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
