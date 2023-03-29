//
//  ViewController.swift
//  Screen Navigation
//
//  Created by MAC03 on 28/03/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btn_next(_ sender: Any)
    {
        let secondVC=storyboard?.instantiateViewController(identifier: "secondVC") as! SecondViewController
        navigationController?.pushViewController(secondVC, animated: true)
        
    }
}

