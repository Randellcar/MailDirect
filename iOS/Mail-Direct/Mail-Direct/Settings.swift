//
//  SettingsView.swift
//  Mail-Direct
//
//  Created by Randell Carrido on 5/11/17.
//  Copyright © 2017 AmethystWorks. All rights reserved.
//

import UIKit
import Foundation

class Settings: UIViewController {

	@IBOutlet weak var profCheck: UIButton!

	@IBOutlet weak var pNote: UILabel!
	@IBOutlet weak var tNote: UILabel!
	@IBOutlet weak var eNote: UILabel!
	override func viewDidLoad() {
		super.viewDidLoad()
		self.profCheck.layer.borderColor = UIColor(colorLiteralRed: 211/255, green: 211/255, blue: 211/255, alpha: 1).cgColor;
		self.pNote.layer.borderColor = UIColor(colorLiteralRed: 211/255, green: 211/255, blue: 211/255, alpha: 1).cgColor;
		self.tNote.layer.borderColor = UIColor(colorLiteralRed: 211/255, green: 211/255, blue: 211/255, alpha: 1).cgColor;
		self.eNote.layer.borderColor = UIColor(colorLiteralRed: 211/255, green: 211/255, blue: 211/255, alpha: 1).cgColor;
		self.profCheck.layer.borderWidth = CGFloat(Float(1.0));
		self.pNote.layer.borderWidth = CGFloat(Float(1.0));
		self.tNote.layer.borderWidth = CGFloat(Float(1.0));
		self.eNote.layer.borderWidth = CGFloat(Float(1.0));
		
		// Do any additional setup after loading the view.
	}
	/*
	Settings menu allows user to check profile, logout, and toggle notifications (push, text, email). The above code puts borders
	on each UILabel for design purposes. There is a back button that unwind segways back to the mail check view.
	
	*/
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	
	/*
	// MARK: - Navigation
	
	// In a storyboard-based application, you will often want to do a little preparation before navigation
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
	// Get the new view controller using segue.destinationViewController.
	// Pass the selected object to the new view controller.
	}
	*/
	
}
