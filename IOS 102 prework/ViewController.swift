//
//  ViewController.swift
//  IOS 102 prework
//
//  Created by Daniel Woldetsadik on 8/15/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolnameTextField: UITextField!
    @IBOutlet weak var SegmentField: UISegmentedControl!
    
    @IBOutlet weak var stepper: UIStepper!
    
    @IBOutlet weak var numebrOfPets: UILabel!
    
    @IBOutlet weak var morepets: UISwitch!
    
    @IBAction func introduceYourself(_ sender: UIButton) {
        // Lets us choose the title we have selected from the segmented control
                // In our example that is whether it is first, second, third or forth
                let year = SegmentField.titleForSegment(at: SegmentField.selectedSegmentIndex)

                // Creating a constant of type string that holds an introduction. The introduction receives the values from the outlet connections.
        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolnameTextField.text!).I am currently in my \(year!) year and I own \(numebrOfPets.text!) dogs.It is \(morepets.isOn) that I want more pets."

                print(introduction)
        
        
        // Creates the alert where we pass in our message, which our introduction.
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)

        // A way to dismiss the box once it pops up
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)

        // Passing this action to the alert controller so it can be dismissed
        alertController.addAction(action)

        present(alertController, animated: true, completion: nil)
        
        
    }
    @IBAction func stepperAction(_ sender: UIStepper) {
        numebrOfPets.text = "\(Int(sender.value))"
    }
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

