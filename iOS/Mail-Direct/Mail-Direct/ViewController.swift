/*
* Randell Carrido
* Course: CSC 415
* Semester: Spring 2017
* Instructor: Dr. Pulimood
* Project name: Mail Direct
* Description: App that notifies user when mail is in their mailbox
* Filename: viewController.swift
* Description: Login view
* Last modified on: 4/25
*/

import UIKit

class ViewController: UIViewController, UITextFieldDelegate { // inherit for hitting return
	//Login button modal segues into main view
	@IBOutlet weak var textField1: UITextField!
	@IBOutlet weak var textField: UITextField!
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// for hitting return
		textField.delegate = self
		
		// for tapping
		self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: Selector("dismissKeyboard")))
	}
	/*
	/ dismissKeyboard() and 
	/ textFieldShouldReturn(textField: UITextField)
	/
	/ Work together to allow tap gesture to dismiss keyboard
	*/
	
	// for tapping
	func dismissKeyboard() {
		textField.resignFirstResponder()
		textField1.resignFirstResponder()
	}
	
	// for hitting return
	func textFieldShouldReturn(textField: UITextField) -> Bool {
		textField.resignFirstResponder()
		textField1.resignFirstResponder()
		return true
	}
}

