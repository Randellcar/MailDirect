//
//  ViewController.swift
//  Mail-Direct
//
//  Created by Randell Carrido on 4/7/17.
//  Copyright © 2017 AmethystWorks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	@IBOutlet weak var userName: UITextField!
	@IBOutlet weak var userPass: UITextField!
	@IBOutlet weak var logInButton: UIButton!
	@IBOutlet weak var signUp: UIButton!
}

