//
//  ViewController.swift
//  UIAlertControllerDemo
//
//  Created by Chhaileng Peng on 12/29/18.
//  Copyright © 2018 Chhaileng Peng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonClick(_ sender: Any) {
        let alert = UIAlertController(title: "Confirm Login", message: "Login to continue", preferredStyle: .alert)
        
        
//        let cancel = UIAlertAction(title: "Cancel", style: .cancel) { (_) in
//            print("Cancel")
//        }
//
//        let delete = UIAlertAction(title: "DELETE", style: .destructive, handler: { (action) in
//            print("DELETE")
//        })
        
        let ok = UIAlertAction(title: "OK", style: .default) { (_) in
            print("OK")
            if let username = alert.textFields?.first?.text,
                let password = alert.textFields?.last?.text {
                print("Username:", username)
                print("Password:", password)
            }
        }
        
        alert.addAction(ok)
//        alert.addAction(cancel)
//        alert.addAction(delete)


        // add text field
        alert.addTextField { (textField) in
            textField.placeholder = "Username"
        }
        alert.addTextField { (textField) in
            textField.placeholder = "Password"
            textField.isSecureTextEntry = true
        }
        
        present(alert, animated: true, completion: nil)
    }
    
}

