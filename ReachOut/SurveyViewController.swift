//
//  SurveyViewController.swift
//  ReachOut
//
//  Created by FTS-MAC-017 on 15/12/15.
//  Copyright © 2015 Fingent Technology Solutions. All rights reserved.
//

import UIKit

class SurveyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      self.title = "Survey View"
             self.navigationController?.navigationBarHidden =  false
    }
    override func viewWillAppear(animated: Bool) {
        self.navigationController!.navigationBar.topItem?.title = ""
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func navigateToSummaryVC(sender: AnyObject) {
        
        self.performSegueWithIdentifier("segueToSummaryView", sender: self)
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
