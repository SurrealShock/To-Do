//
//  EditViewController.swift
//  To-Do
//
//  Created by Adrian Avram on 3/24/18.
//  Copyright © 2018 OverLakeside. All rights reserved.
//

import UIKit

class EditViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var eventField: UITextField!
    @IBOutlet weak var goalTitle: UITextField!
    @IBOutlet weak var topViewHeight: NSLayoutConstraint!
    
    var goalTitleArray = [String]()
    var goalDescriptionArray = [String]()
    let userData = UserData()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.eventField.delegate = self
        self.goalTitle.delegate = self
        topViewHeight.constant = (self.view.frame.size.height / 4.5) - 10

        goalTitleArray = userData.getUserData(key: "goalTitle") as! [String]
        goalDescriptionArray = userData.getUserData(key: "goalDescription") as! [String]
        
        for i in 0 ... goalTitleArray.count - 1 {
            print(goalTitleArray[i])
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn (_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return (true)
    }

    @IBAction func donePressed(_ sender: Any) {
        goalTitleArray.append(goalTitle.text!)
        goalDescriptionArray.append(eventField.text!)
        
        userData.saveUserData(key: "goalTitle", value: goalTitleArray)
        userData.saveUserData(key: "goalDescription", value: goalDescriptionArray)
        _ = navigationController?.popToRootViewController(animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}
