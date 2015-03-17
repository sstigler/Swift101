//
//  CustomTableViewCell.swift
//  Swift101_63
//
//  Created by Marty Burolla on 3/16/15.
//  Copyright (c) 2015 Marty Burolla. All rights reserved.
//

import Foundation
import UIKit
import Snap

public class CustomTableViewCell : UITableViewCell
{
    // MARK: Data members
    
    public let label = UILabel()
    public var button: UIButton?
    
    // MARK: Lifecycle
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String!)
    {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.setupUI()
        self.setUpConstraints()
    }
    
    public required init(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
    }
    
    // MARK: Methods
    
    private func setupUI()
    {
        self.backgroundColor = UIColor.grayColor()
        
        // Label
        self.label.backgroundColor = UIColor.whiteColor()
        self.addSubview(self.label)
        
        // Button
        self.button = UIButton.buttonWithType(.System) as? UIButton
        self.button?.backgroundColor = UIColor.blueColor()
        self.button?.setTitle("Cell Button", forState: .Normal)
        
        if self.button != nil {
            self.addSubview(self.button!)
        }
    }
    
    private func setUpConstraints()
    {
        self.label.snp_makeConstraints { (make) -> () in
            make.top.equalTo(self.snp_top)
            make.leading.equalTo(self.snp_leading)
            make.width.equalTo(100)
            make.height.equalTo(20)
        }
        
        self.button?.snp_makeConstraints { (make) -> () in
            make.top.equalTo(self.snp_top)
            make.leading.equalTo(self.label.snp_trailing).with.offset(10)
            make.width.equalTo(100)
            make.height.equalTo(30)
        }
    }
}