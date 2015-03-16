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
    
    private var button = UIButton()
    
    // MARK: Lifecycle
    
    public override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.redColor()
        self.setupUI();
        self.setupConstraints()
    }

    // MARK: Methods
    
    private func setupUI()
    {
        self.button = UIButton.buttonWithType(UIButtonType.System) as! UIButton
        self.button.backgroundColor = UIColor.greenColor()
        self.button.setTitle("Login", forState: UIControlState.Normal)
        self.button.addTarget(self, action: "buttonAction:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(self.button)
    }
    
    private func setupConstraints()
    {
        self.button.snp_makeConstraints { (make) -> () in
            make.top.equalTo(self.view.snp_top).with.offset(50)
            make.leading.equalTo(self.view.snp_leading)
            make.trailing.equalTo(self.view.snp_trailing)
            make.height.equalTo(50)
        }
    }
    
    // MARK: Action
    
    func buttonAction(sender:UIButton!)
    {
        println("pressed green button")
    }
    
    
}