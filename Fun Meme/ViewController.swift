//
//  ViewController.swift
//  Fun Meme
//
//  Created by Subendran on 07/08/21.
//  Copyright © 2021 Subendran. All rights reserved.
//

import UIKit
import JVFloatLabeledTextField

class ViewController: UIViewController {
    @IBOutlet weak var passwordTextField: JVFloatLabeledTextField!
    
    @IBOutlet weak var userNameTextField: JVFloatLabeledTextField!
    @IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        self.loginButton.layer.cornerRadius = 15
        self.loginButton.layer.borderWidth = 1
        self.passwordTextField.isSecureTextEntry = true
    }
    
    
    @IBAction func actionLogin(_ sender: Any) {
        if passwordTextField.text?.count != 0 && userNameTextField.text?.count != 0 {
            let launchedBefore = UserDefaults.standard.bool(forKey: "launchedBefore")
            if launchedBefore  {
                guard let vc = self.storyboard?.instantiateViewController(identifier: "MemeDashBoardViewController") as? MemeDashBoardViewController else {
                    return
                }
                self.navigationController?.pushViewController(vc, animated: true)
                
            }else {
                guard let vc = self.storyboard?.instantiateViewController(identifier: "OnBoardingViewController") as? OnBoardingViewController else {
                    return
                }
                self.navigationController?.pushViewController(vc, animated: true)
                UserDefaults.standard.set(true, forKey: "launchedBefore")
            }
        } else {
            let alert = UIAlertController(title: "Alert", message: "Please enter user name and password", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
    }
}
