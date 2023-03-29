//
//  SecondViewController.swift
//  Screen Navigation
//
//  Created by MAC03 on 28/03/23.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btn_home(_ sender: Any)
    {
        navigationController?.popViewController(animated: true)
    }
    
}
