//
//  ViewController.swift
//  Alert_with_Textfields
//
//  Created by MAC03 on 28/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl_username: UILabel!
    @IBOutlet weak var lbl_password: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn_login(_ sender: Any)
    {
        let alert=UIAlertController(title: "Login", message: "Enter your username and password!", preferredStyle: .alert)
        alert.addTextField { (txtUsername) in
            txtUsername.placeholder="Username"
            txtUsername.textAlignment = .center
        }
        alert.addTextField { (txtPassword) in
            
            txtPassword.placeholder="Password"
            txtPassword.textAlignment = .center
            txtPassword.isSecureTextEntry=true
        }
        let btn1=UIAlertAction(title: "Login", style:.destructive, handler:{ACTION in
            
            self.lbl_username.text=alert.textFields![0].text
            self.lbl_password.text=alert.textFields![1].text
        })
        let btn2=UIAlertAction(title: "Cancel", style:.cancel, handler: nil)
        alert.addAction(btn1)
        alert.addAction(btn2)
        present(alert, animated: true, completion: nil)
    }
    
}

