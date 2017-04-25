/*
* Randell Carrido
* Course: CSC 415
* Semester: Spring 2017
* Instructor: Dr. Pulimood
* Project name: Mail Direct
* Description: App that notifies user when mail is in their mailbox
* Filename: MainView.swift
* Description: Main menu view
* Last modified on: 4/25
*/

import Foundation
import UIKit

class MainView: UIViewController {
	
	
	
	@IBOutlet weak var circleImg: UIImageView!
	
	var readStringProject = "" // Used to store the file contents
	/*
	/ viewDidLoad()
	/
	/ Once entered into view controler, automatically reads
	/ file.txt to check mail and displays blue or red circle.
	*/
	override func viewDidLoad() {
		super.viewDidLoad()
		
		let fileURLProject = Bundle.main.path(forResource: "file", ofType: "txt")
		// Read from the file
		do {
			readStringProject = try String(contentsOfFile: fileURLProject!, encoding: String.Encoding.utf8)
			print(readStringProject)
		} catch let error as NSError {
			print("Failed reading from URL")
		}
		if(readStringProject.isEmpty){
			circleImg.image = UIImage(named:"blue")
		}
		else{
			circleImg.image = UIImage(named:"red")
		}
		
	}
	/*
	/ checkMail(_ sender: UIButton)
	/
	/ Button that calls method to read in file.txt to see
	/ if there is text or not. No text means there is mail
	/ and text means there is mail.
	/ Displays blue circle if there is mail and red circle
	/ if there is no mail.
	*/
	
	@IBAction func checkMail(_ sender: UIButton) {
		let fileURLProject = Bundle.main.path(forResource: "file", ofType: "txt")
		// Read from the file
		do {
			readStringProject = try String(contentsOfFile: fileURLProject!, encoding: String.Encoding.utf8)
			print(readStringProject)
		} catch let error as NSError {
			print("Failed reading from URL")
		}

		if(readStringProject.isEmpty){
			circleImg.image = UIImage(named:"blue")
		}
		else{
			circleImg.image = UIImage(named:"red")
		}
	}
	
	// Gear button on upper right brings user to Profile
	// settings

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
	}

	
	
	
	
}
