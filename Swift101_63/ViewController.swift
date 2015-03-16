//
//  ViewController.swift
//  Swift101_63
//
//  Created by Marty Burolla on 3/13/15.
//  Copyright (c) 2015 Marty Burolla. All rights reserved.
//

import UIKit
import Snap

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    // MARK: Data members
    
    private var tableView: UITableView
    private var button: UIButton;
    private var customView: CustomView;
    
    private var dataToDisplay = ["one", "two", "three", "four"]
    private let kCellResuseIdentifier = "CellID"
    
    // MARK: Lifecycle

    required init(coder aDecoder: NSCoder)
    {
        self.button = UIButton()
        self.customView = CustomView(coder: aDecoder)
        self.tableView = UITableView()
       
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
        // Button
        button = UIButton.buttonWithType(UIButtonType.System) as! UIButton
        button.backgroundColor = UIColor.greenColor()
        button.setTitle("Test Button", forState: UIControlState.Normal)
        button.addTarget(self, action: "buttonAction:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(self.button)
    
        // Custom View
        self.view.addSubview(self.customView)
        
        // Table
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: kCellResuseIdentifier)
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.view.addSubview(self.tableView)
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
        
        self.tableView.snp_makeConstraints { (make) -> () in
            make.top.equalTo(self.customView.snp_bottom).with.offset(10)
            make.leading.equalTo(self.view.snp_leading);
            make.trailing.equalTo(self.view.snp_trailing)
            make.bottom.equalTo(self.view.snp_bottom)
        }
    }

    // MARK: Button Actions
    
    func buttonAction(sender:UIButton!)
    {
        println("Pressed green button")
    }
    
    // MARK: UITableViewDelegate

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        println("Selected row: \(indexPath.row)")
    }
    
    // MARK: UITableViewDataSource
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.dataToDisplay.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        var cell = self.tableView.dequeueReusableCellWithIdentifier(kCellResuseIdentifier) as! UITableViewCell
        cell.textLabel!.text = self.dataToDisplay[indexPath.row]
        return cell
    }
    
}

