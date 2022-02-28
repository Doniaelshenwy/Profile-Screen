//
//  SecondScreenViewController.swift
//  Profile Screen
//
//  Created by Donia Elshenawy on 28/02/2022.
//

import UIKit

class SecondScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func editBtn(_ sender: Any) {
        if let vc = self.storyboard?.instantiateViewController(identifier: "SVC") as? SecondScreenViewController{
            
        }
    }
    

}
