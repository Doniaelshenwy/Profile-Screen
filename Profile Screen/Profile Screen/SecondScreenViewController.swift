//
//  SecondScreenViewController.swift
//  Profile Screen
//
//  Created by Donia Elshenawy on 28/02/2022.
//

import UIKit

class SecondScreenViewController: UIViewController, Communicator {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var facultyLabel: UILabel!
    override func viewDidLoad() {
        
        
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func editBtn(_ sender: Any) {
        if let vc = self.storyboard?.instantiateViewController(identifier: "TVC") as? ThirdScreenViewController{
            vc.delegate = self
            self.navigationController?.pushViewController(vc, animated: true)

        }
    }
    
    func editFunc(name: String, age: String, faculty: String) {
        nameLabel.text = name
        ageLabel.text = age
        facultyLabel.text = faculty
        
    }
}
