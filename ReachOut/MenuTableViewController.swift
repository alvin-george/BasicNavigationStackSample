//
//  menuTableViewController.swift
//  Vhl
//
//  Created by Nowfal E Salam on 7/9/15.
//  Copyright (c) 2015 Nowfal E Salam. All rights reserved.
//

import UIKit

class MenuTableViewController: UIViewController {
    
    override func viewDidLayoutSubviews() {
     }
    override func viewDidLoad() {
        super.viewDidLoad()
            }
        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func logoutButtonClicked(sender: AnyObject) {
        
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
    
}
