//
//  ViewController.swift
//  ReachOut
//
//  Created by FTS-MAC-017 on 15/12/15.
//  Copyright © 2015 Fingent Technology Solutions. All rights reserved.
//

import UIKit
import Foundation

class LoginViewController: UIViewController,UITextFieldDelegate {
    
    //MARK:- STORYBOARD REFERENCE
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var heightView: UIView!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    var imageView_email = UIImageView()
    var imageView_password = UIImageView()
    
    //MARK:- DEFAULT VIEW METHODS
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.password.delegate = self
        self.username.delegate = self
        self.navigationController?.navigationBarHidden =  true
        makeUIChangesToTextfieldsAndLoginButton()
        
    }
    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBarHidden =  true
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    override func viewDidLayoutSubviews() {
        loginButton.layer.cornerRadius = loginButton.bounds.height / 2
        loginButton.layer.borderWidth = 0
        imageView_email.bounds = CGRect(x: 0, y: 0, width: username.frame.height * 3 / 4, height: username.frame.height * 3 / 4)
        imageView_password.bounds = CGRect(x: 0, y: 0, width: password.frame.height * 3 / 4, height: password.frame.height * 3 / 4)
    }
    
    //MARK:- TEXTFIELD METHODS
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        if(textField.returnKeyType == UIReturnKeyType.Next) {
            password.becomeFirstResponder()
        }
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidBeginEditing(textField: UITextField) {
        let scrollPoint:CGPoint = CGPointMake(0,textField.frame.origin.y/2);
        scrollView!.setContentOffset(scrollPoint, animated: true);
    }
    func textFieldShouldEndEditing(textField: UITextField) -> Bool {
        
        dispatch_async(dispatch_get_main_queue()) {
            UIView.animateWithDuration(0, animations: { self.scrollView!.setContentOffset(CGPointZero,animated: true) })
        }
        return true
    }
    
    override func touchesBegan(touches: Set<UITouch>,
        withEvent event: UIEvent?) {
            self.view.endEditing(true)
    }
    
    //Initial UI set up
    func makeUIChangesToTextfieldsAndLoginButton()
    {
        //Adding Image to Email Textfield
        let image = UIImage(named: "email")
        imageView_email.image = image
        username.leftView = imageView_email
        view.addSubview(imageView_email)
        username.leftViewMode = UITextFieldViewMode.Always
        
        //Adding Image to Password Textfield
        let image_password = UIImage(named: "password")
        imageView_password.image = image_password
        password.leftView = imageView_password
        view.addSubview(imageView_password)
        password.leftViewMode = UITextFieldViewMode.Always
        
        //LoginButton's UI Change
        loginButton.layer.cornerRadius = loginButton.bounds.height / 2
        loginButton.layer.borderWidth = 0
        
        forgotPasswordButton.layer.cornerRadius = loginButton.bounds.height / 2
        forgotPasswordButton.layer.borderWidth = 0
        
        
    }
    @IBAction func loginButton(sender: AnyObject) {
        
        print("login clicked")
        self.password.resignFirstResponder();
        self.username.resignFirstResponder();
     self.performSegueWithIdentifier("homeSegue", sender: self)
    }
    
    @IBAction func forgotPasswordButtonClicked(sender: AnyObject) {
        self.performSegueWithIdentifier("segueToForgotPasswordVC", sender: self)
        
    }
    
}

