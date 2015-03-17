//
//  ViewController.swift
//  Swift101_63
//
//  Created by Marty Burolla on 3/13/15.
//  Copyright (c) 2015 Marty Burolla. All rights reserved.
//

import UIKit
import Snap

public class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    // MARK: Data members
    
    private var button: UIButton?
    private let tableView = UITableView()
    private let customView = CustomView()
   
    private var dataToDisplay = ["one", "two", "three"]
    private let kCellResuseIdentifier = "CellID"
    
    // MARK: Lifecycle
    
    public override func viewDidLoad()
    {
        super.viewDidLoad()
    
        setupUI()
        setupConstraints()
    }
    
    // MARK: Setup UI
    
    private func setupUI()
    {
        // Button
        button = UIButton.buttonWithType(.System) as? UIButton
        button?.backgroundColor = UIColor.greenColor()
        button?.setTitle("Login", forState: .Normal)
        button?.addTarget(self, action: "buttonAction:", forControlEvents: .TouchUpInside)
        
        if button != nil {
            self.view.addSubview(self.button!)
        }
    
        // Custom View
        self.view.addSubview(self.customView)
        
        // Table
        self.tableView.registerClass(CustomTableViewCell.self, forCellReuseIdentifier: kCellResuseIdentifier)
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.view.addSubview(self.tableView)
    }
    
    // MARK: Setup constraints
    
    private func setupConstraints()
    {
        self.button?.snp_makeConstraints { (make) -> () in
            make.top.equalTo(self.view.snp_top).with.offset(30)
            make.leading.equalTo(self.view.snp_leading).with.offset(50)
            make.trailing.equalTo(self.view.snp_trailing).with.offset(-50)
            make.height.equalTo(50)
        }
        
        self.customView.snp_makeConstraints { (make) -> () in
            make.top.equalTo(self.button!.snp_bottom).with.offset(10)
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

    // MARK: Login
    
    public func buttonAction(sender:UIButton!)
    {
        var login : LoginViewController = LoginViewController()
        login.rootViewController = self
        
        self.presentViewController(login, animated: true) { () -> Void in
            println("Presented login screen")
        }
    }
    
    public func didDismissLoginViewController()
    {
        dataToDisplay = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten"]
        self.tableView.reloadData()
    }
    
    // MARK: UITableViewDelegate

    public func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        println("Selected row: \(indexPath.row)")
    }
    
    // MARK: UITableViewDataSource
    
    public func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.dataToDisplay.count
    }
    
    public func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        var cell : CustomTableViewCell = self.tableView.dequeueReusableCellWithIdentifier(kCellResuseIdentifier) as! CustomTableViewCell
        cell.label.text = self.dataToDisplay[indexPath.row]
        cell.button?.tag = indexPath.row
        cell.button?.addTarget(self, action: "cellButtonAction:", forControlEvents: UIControlEvents.TouchUpInside)
        return cell
    }
    
    // MARK: Cell Button Action
    
    public func cellButtonAction(sender: UIButton!)
    {
        println("Cell Button pushed for row: \(sender.tag)")
    }
    
}

