//
//  ViewController.swift
//  introduceStudent
//
//  Created by Yeahne Kim on 2/3/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func stepperDidChange(_ sender: UIStepper) {
       
       numberOfPetsLabel.text = "\(Int(sender.value))"
   }
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
           
           // Lets us choose the title we have selected from the segmented control
           // In our example that is whether it is first, second, third or forth
           let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
           
           // Creating a constant of type string that holds an introduction. The introduction receives the values from the outlet connections.
           let introduction = """
"My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!).
           I am currently in my \(year!) year and I own \(numberOfPetsLabel.text!) dogs.
           It is \(morePetsSwitch.isOn) that I want more pets."
"""
           
           print(introduction)
       }


}

