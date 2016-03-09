//
//  DashBoardViewController.swift
//  ReachOut
//
//  Created by FTS-MAC-017 on 15/12/15.
//  Copyright © 2015 Fingent Technology Solutions. All rights reserved.
//

import UIKit

class DashBoardViewController: UIViewController,UISearchBarDelegate,SWRevealViewControllerDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var dashBoardSearchBar: UISearchBar!
    @IBOutlet weak var dashBoardSegment: UISegmentedControl!
    @IBOutlet weak var dashBoardTableView: UITableView!
    @IBOutlet weak var menuButton: UIBarButtonItem!
    @IBOutlet weak var searchButtton: UIBarButtonItem!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        //  self.activateInitialUISetUp()
        //    self.revealViewController().delegate = self
        
        self.navigationController?.navigationBarHidden =  false
        
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            self.revealViewController().rearViewRevealWidth = self.view.frame.width / 2
            self.revealViewController().rearViewRevealOverdraw = 0.0
            self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
        }
        
    }
    override func viewWillAppear(animated: Bool) {
        
        self.navigationController?.navigationBarHidden =  false
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK:- SEARCHBAR METHODS
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        searchBar .resignFirstResponder()
        self.makeVisibleTopUIElements()
        self.dashBoardSearchBar.hidden =  true
    }
    func searchBarTextDidBeginEditing(searchBar: UISearchBar) {
        
    }
    func searchBarCancelButtonClicked(searchBar: UISearchBar){
        self.dashBoardSearchBar.resignFirstResponder()
    }
    
    // MARK: - Table view data source
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("dashBoardTableCellID") as! DashBoardTableViewCell
        
        if(indexPath.row == 0)
        {
            //cell.imageView?.contentMode.
        }
        else
        {
            
        }
        return cell
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        self.performSegueWithIdentifier("segueToMapVC", sender: self)
    }
    
    //UI-Related Methods
    func activateInitialUISetUp()
    {
        self.navigationController?.navigationBarHidden =  false
        self.navigationController?.navigationBar.barStyle = UIBarStyle.BlackOpaque
        self.navigationController?.navigationBar.translucent =  true
        self.navigationController?.navigationBar.backgroundColor =  UIColor.redColor()
        
        self.dashBoardSearchBar.hidden =  true
        
        //SearchBar Text
        let textFieldInsideSearchBar = dashBoardSearchBar.valueForKey("searchField") as? UITextField
        textFieldInsideSearchBar?.textColor = UIColor.whiteColor()
        
        
        //        //Right Navigation Button
        //        let btnName = UIButton()
        //        btnName.setImage(UIImage(named: "password"), forState: .Normal)
        //        btnName.frame = CGRectMake(0, 0, 30, 30)
        //        btnName.addTarget(self, action: Selector("dashBoardSearchButtonClicked"), forControlEvents: .TouchUpInside)
        //
        //        let rightBarButton = UIBarButtonItem()
        //        rightBarButton.customView = btnName
        //        self.navigationItem.rightBarButtonItem = rightBarButton
        //
        //
        //        //Left NavigationButton
        //        let menuButton = UIBarButtonItem()
        //        menuButton.image =  UIImage(named: "email")
        //        self.navigationItem.leftBarButtonItem = menuButton
        
        //Nav Bar Title
        self.title = "Work Order"
        
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            self.revealViewController().rearViewRevealWidth = self.view.frame.width / 2
            self.revealViewController().rearViewRevealOverdraw = 0.0
            self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
        }
    }
    func hideTopUIElements()
    {
        self.navigationController?.navigationBarHidden = true
        
    }
    func makeVisibleTopUIElements()
    {
        self.navigationController?.navigationBarHidden = false
    }
    func applyThemeColourToTheView(colourName:String?)
    {
        topView.backgroundColor =  UIColor.blueColor()
    }
    
    func revealController(revealController: SWRevealViewController!, didMoveToPosition position: FrontViewPosition) {
        if(position.rawValue == 3)
        {
            
            
        }
        else
        {
            
        }
        print("position\(position)")
        
    }
    @IBAction func dashBoardSegmentClicked(sender: AnyObject) {
        
    }
    
    @IBAction func mapViewButtonClicked(sender: AnyObject) {
        
        self.performSegueWithIdentifier("segueToMapVC", sender: self)
    }
    
    
    @IBAction func navigateToIndexView(sender: AnyObject) {
        
        //        let surveyViewControllerObejct = self.storyboard?.instantiateViewControllerWithIdentifier("surveyVC") as? SurveyViewController
        //        self.navigationController?.pushViewController(surveyViewControllerObejct!, animated: true)
        
        self.performSegueWithIdentifier("segueToIndexVC", sender: self)
    }
    @IBAction func navigateToSurveyView(sender: AnyObject) {
        
        self.performSegueWithIdentifier("segueToSurveyView", sender: self)
        //
        //        let indexViewControllerObejct = self.storyboard?.instantiateViewControllerWithIdentifier("indexVC") as? IndexViewController
        //        self.navigationController?.pushViewController(indexViewControllerObejct!, animated: true)
    }
        
}
