//
//  MapViewController.swift
//  ReachOut
//
//  Created by fingent on 28/12/15.
//  Copyright © 2015 Fingent Technology Solutions. All rights reserved.
//

import UIKit

class MapViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
self.title = "Map View"
             self.navigationController?.navigationBarHidden =  false
        
        
    }
    override func viewWillAppear(animated: Bool) {
        self.navigationController!.navigationBar.topItem?.title = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func navigateToIndexView(sender: AnyObject) {
        
        self.performSegueWithIdentifier("segueToIndexViewVC", sender: self)
        
    }
    
    @IBAction func navigateToSurveyView(sender: AnyObject) {
        
        let SurveyVCObejct = self.storyboard?.instantiateViewControllerWithIdentifier("surveyVC") as? SurveyViewController
        self.navigationController?.pushViewController(SurveyVCObejct!, animated: true)
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
