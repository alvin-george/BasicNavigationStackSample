//
//  ForgotPasswordViewController.swift
//  ReachOut
//
//  Created by fingent on 29/12/15.
//  Copyright © 2015 Fingent Technology Solutions. All rights reserved.
//

import UIKit

class ForgotPasswordViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBarHidden =  false
self.title = "Forgot PW VC"
    }
    override func viewWillAppear(animated: Bool) {
        self.navigationController!.navigationBar.topItem?.title = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func submitPasswordButtonClicked(sender: AnyObject) {
        
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
