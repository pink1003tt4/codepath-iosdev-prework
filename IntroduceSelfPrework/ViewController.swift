//
//  ViewController.swift
//  IntroduceSelfPrework
//
//  Created by Hong Thi Kim Nguyen on 1/17/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var firstnameTextField: UITextField!
    @IBOutlet weak var lastnameTextField: UITextField!
    @IBOutlet weak var schoolnameTextField: UITextField!
    
    @IBOutlet weak var YearSegmentedControl: UISegmentedControl!
    @IBOutlet weak var numbersofpetsLabel: UILabel!
    @IBOutlet weak var petStepper: UIStepper!
    @IBOutlet weak var morepetsSwtich: UISwitch!
    
    @IBAction func stepperDidChange(_ sender: UIStepper){
        numbersofpetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
            
            // Let's us chose the title we have selected from the segmented control
            let year = YearSegmentedControl.titleForSegment(at: YearSegmentedControl.selectedSegmentIndex)
            
            // Creating a variable of type string, that holds an introduction. The introduction interpolates the values from the text fields provided.
            // Currently we can only present the information in a print statement. However, this lets us verify that our app is printing out what is intended!
            let introduction = "My name is \(firstnameTextField.text!) \(lastnameTextField.text!) and I attend \(schoolnameTextField.text!). I am currently in my \(year!) year and I own \(numbersofpetsLabel.text!) dogs. It is \(morepetsSwtich.isOn) that I want more pets."
            
            
            // Creates the alert where we pass in our message, which our introduction.
            let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
            
            // A way to dismiss the box once it pops up
            let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
            
            // Passing this action to the alert controller so it can be dismissed
            alertController.addAction(action)
            
            present(alertController, animated: true, completion: nil)
        }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

