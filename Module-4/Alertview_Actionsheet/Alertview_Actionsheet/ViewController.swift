//
//  ViewController.swift
//  Alertview_Actionsheet
//
//  Created by MAC03 on 28/03/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn_alert(_ sender: Any)
    {
        let errorAlert=UIAlertController(title: "Error", message: "Something went wrong...Try again!", preferredStyle: .alert)
        let ok=UIAlertAction(title: "Ok", style: .default, handler: nil)
        let more=UIAlertAction(title: "MORE", style: .destructive, handler:{ACTION in
            self.view.backgroundColor=UIColor.yellow
            
        })
        let cancel=UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        errorAlert.addAction(ok)
        errorAlert.addAction(more)
        errorAlert.addAction(cancel)
        present(errorAlert, animated: true, completion: nil)
    }
    
    @IBAction func btn_actopnsheet(_ sender: Any)
    {
        let payment=UIAlertController(title: "Make Payment", message: "Please select any one option!", preferredStyle: .actionSheet)
        let btn1=UIAlertAction(title: "Credit Card", style: .default, handler: nil)
        let btn2=UIAlertAction(title: "Debit Card", style: .default, handler: nil)
        let btn3=UIAlertAction(title: "UPI", style: .destructive, handler:{ACTION in
            
            let alert=UIAlertController(title: "UPI", message: "You are selected UPI Option!", preferredStyle: .alert)
            let ok=UIAlertAction(title: "Ok", style: .default, handler: nil)
            alert.addAction(ok)
            self.present(alert, animated: true, completion: nil)
            
        })
        let btn4=UIAlertAction(title: "Cancel Payment", style:.cancel, handler: nil)
        payment.addAction(btn1)
        payment.addAction(btn2)
        payment.addAction(btn3)
        payment.addAction(btn4)
        present(payment, animated: true, completion: nil)
    }
}

