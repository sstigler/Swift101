//
//  ViewController.swift
//  Swift101_63
//
//  Created by Marty Burolla on 3/13/15.
//  Copyright (c) 2015 Marty Burolla. All rights reserved.
//

import UIKit
import Snap


class ViewController: UIViewController
{
    private var button: UIButton;
    private var customView: CustomView;
    
    // MARK: Lifecycle

    required init(coder aDecoder: NSCoder)
    {
        self.button = UIButton()
        self.customView = CustomView(coder: aDecoder)
        
        super.init(coder: aDecoder)
        
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    
        setupUI()
        setupConstraints()
    }
    
    // MARK: Setup UI
    
    private func setupUI()
    {
        button = UIButton.buttonWithType(UIButtonType.System) as! UIButton
        button.backgroundColor = UIColor.greenColor()
        button.setTitle("Test Button", forState: UIControlState.Normal)
        button.addTarget(self, action: "buttonAction:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button)
        
        //customView = CustomView(coder: aDecoder)
        customView.backgroundColor = UIColor.redColor()
        self.view.addSubview(customView)
    }
    
    // MARK: Setup constraints
    
    private func setupConstraints()
    {
        self.button.snp_makeConstraints { (make) -> () in
            make.top.equalTo(self.view.snp_top).with.offset(30)
            make.leading.equalTo(self.view.snp_leading).with.offset(50)
            make.trailing.equalTo(self.view.snp_trailing).with.offset(-50)
            make.height.equalTo(50)
        }
        
        self.customView.snp_makeConstraints { (make) -> () in
            make.top.equalTo(self.button.snp_bottom).with.offset(10)
            make.leading.equalTo(self.view.snp_leading)
            make.trailing.equalTo(self.view.snp_trailing)
            make.height.equalTo(100);
        }
    }

    // MARK: Button Actions
    
    func buttonAction(sender:UIButton!)
    {
        var plistProxy = PListProxy()
    
    }

}



