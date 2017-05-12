//
//  ProfileViewController.swift
//  Mail-Direct
//
//  Created by Randell Carrido on 5/11/17.
//  Copyright © 2017 AmethystWorks. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

	@IBOutlet weak var userName: UILabel!
	@IBOutlet weak var eMail: UILabel!
	@IBOutlet weak var phoneNumber: UILabel!
	@IBOutlet weak var resBox: UILabel!
	//Above are the variables for the different changeable profile info
	override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

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
