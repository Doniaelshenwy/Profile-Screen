//
//  ThirdScreenViewController.swift
//  Profile Screen
//
//  Created by Donia Elshenawy on 28/02/2022.
//

import UIKit

class ThirdScreenViewController: UIViewController {

    var delegate : Communicator?
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var ageTextField: UITextField!
    
    @IBOutlet weak var facultyTextField: UITextField!
    
    override func viewDidLoad() {

        super.viewDidLoad()

    }
    

 
    
    
    
    
    @IBAction func saveBtn(_ sender: Any) {
        
       guard let name = nameTextField.text, let age = ageTextField.text, let faculty = facultyTextField.text else {
            return
        }
        if ((name.isEmpty) || (age.isEmpty) || (faculty.isEmpty)){
            return
        }
        else{
        delegate?.editFunc(name: name, age: age, faculty: faculty)
        self.navigationController?.popViewController(animated: true)
        }
        
    }
}
