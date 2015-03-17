//
//  Login.swift
//  Swift101_63
//
//  Created by Marty Burolla on 3/16/15.
//  Copyright (c) 2015 Marty Burolla. All rights reserved.
//

import Foundation
import UIKit
import Snap

public class LoginViewController : UIViewController
{
    // MARK: Data members
    
    private var username = UITextField()
    private var password = UITextField()
    private var button = UIButton()
    public var rootViewController = ViewController()
    
    // MARK: Lifecycle
    
    public override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.setupUI();
        self.setupConstraints()
    }

    // MARK: Setup UI
    
    private func setupUI()
    {
        self.view.backgroundColor = UIColor.lightGrayColor()
        
        // Username
        self.username.placeholder = "Username"
        self.username.backgroundColor = UIColor.whiteColor()
        self.username.borderStyle = UITextBorderStyle.RoundedRect
        self.view.addSubview(self.username)
        
        // Password
        self.password.placeholder = "Password"
        self.password.backgroundColor = UIColor.whiteColor()
        self.password.borderStyle = UITextBorderStyle.RoundedRect
        self.password.secureTextEntry = true
        self.view.addSubview(self.password)
        
        // OK Button
        self.button = UIButton.buttonWithType(UIButtonType.System) as! UIButton
        self.button.backgroundColor = UIColor.greenColor()
        self.button.setTitle("OK", forState: UIControlState.Normal)
        self.button.addTarget(self, action: "buttonAction:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(self.button)
    }
    
    // MARK: Setup Constraints
    
    private func setupConstraints()
    {
        self.username.snp_makeConstraints { (make) -> () in
            make.top.equalTo(self.view.snp_top).with.offset(50)
            make.leading.equalTo(self.view.snp_leading).with.offset(50)
            make.trailing.equalTo(self.view.snp_trailing).with.offset(-50)
            make.height.equalTo(50)
        }
        
        self.password.snp_makeConstraints { (make) -> () in
            make.top.equalTo(self.username.snp_bottom).with.offset(20)
            make.leading.equalTo(self.view.snp_leading).with.offset(50)
            make.trailing.equalTo(self.view.snp_trailing).with.offset(-50)
            make.height.equalTo(50)
        }
        
        self.button.snp_makeConstraints { (make) -> () in
            make.top.equalTo(self.password.snp_bottom).with.offset(20)
            make.leading.equalTo(self.view.snp_leading).with.offset(50)
            make.trailing.equalTo(self.view.snp_trailing).with.offset(-50)
            make.height.equalTo(50)
        }
    }
    
    // MARK: Action

    func buttonAction(sender:UIButton!)
    {
        println("Username: \(self.username.text). Password: \(self.password.text).")
        
        self.dismissViewControllerAnimated(true, completion: { () -> Void in
            self.rootViewController.didDismissLoginViewController()
        })
    }
    
}