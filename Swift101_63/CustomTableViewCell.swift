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
    
    public var label: UILabel
    
    
    // MARK: Lifecycle
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String!)
    {
        self.label = UILabel()
    
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.backgroundColor = UIColor.grayColor()
        self.setupUI()
        self.setUpConstraints()
    }
    
    public required init(coder aDecoder: NSCoder)
    {
        self.label = UILabel()
        
        super.init(coder: aDecoder)
    }
    
    // MARK: Methods
    
    private func setupUI()
    {
        label.backgroundColor = UIColor.whiteColor()
        
        self.addSubview(self.label)
    }
    
    private func setUpConstraints()
    {
        label.snp_makeConstraints { (make) -> () in
            make.top.equalTo(self.snp_top)
            make.leading.equalTo(self.snp_leading)
            make.width.equalTo(100)
            make.height.equalTo(20)
        }
    }
    
    
}