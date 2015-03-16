//
//  CustomView.swift
//  Swift101_63
//
//  Created by Marty Burolla on 3/14/15.
//  Copyright (c) 2015 Marty Burolla. All rights reserved.
//

import Foundation
import UIKit
import Snap

public class CustomView : UIView
{
    // MARK: Data members
    
    private var topButton : UIButton
    private var bottomButton : UIButton
    
    // MARK: Construction
    
    public required init(coder aDecoder: NSCoder)
    {
        self.topButton = UIButton()
        self.bottomButton = UIButton()
        
        super.init(coder: aDecoder)
        
        self.backgroundColor = UIColor.redColor()
        self.setupUI()
        self.setupConstraints()
    }
    
    // MARK: Setup UI
    
    public func setupUI()
    {
        // Top button
        self.topButton = UIButton.buttonWithType(UIButtonType.System) as! UIButton
        self.topButton.backgroundColor = UIColor.yellowColor()
        self.topButton.setTitle("Top Button", forState: UIControlState.Normal)
        self.topButton.addTarget(self, action: "TopButton:", forControlEvents: UIControlEvents.TouchUpInside)
        self.addSubview(self.topButton)
        
        
        // Bottom button.
        self.bottomButton = UIButton.buttonWithType(UIButtonType.System) as! UIButton
        self.bottomButton.backgroundColor = UIColor.purpleColor()
        self.bottomButton.setTitle("Bottom Button", forState: UIControlState.Normal)
        self.bottomButton.addTarget(self, action: "BottomButton:", forControlEvents: UIControlEvents.TouchUpInside)
        self.addSubview(self.bottomButton)
    }
    
    // MARK: Setup Constraints
    
    public func setupConstraints()
    {
        // Top button
        self.topButton.snp_makeConstraints { (make) -> () in
            make.top.equalTo(self.snp_top)
            make.leading.equalTo(self.snp_leading)
            make.trailing.equalTo(self.snp_trailing)
            make.bottom.equalTo(self.snp_bottom).with.offset(-55)
        }
        
        // Bottom button
        self.bottomButton.snp_makeConstraints { (make) -> () in
            make.top.equalTo(self.topButton.snp_bottom).with.offset(10)
            make.leading.equalTo(self.snp_leading)
            make.trailing.equalTo(self.snp_trailing)
            make.bottom.equalTo(self.snp_bottom)
        }
    }
    
    // MARK: Button Actions
    
    public func TopButton(sender: UIButton!)
    {
        println("Pressed top button")
    }
    
    public func BottomButton(sender: UIButton!)
    {
        println("Pressed bottom button")
    }
}