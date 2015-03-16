//
//  PListProxy.swift
//  Swift101_63
//
//  Created by Marty Burolla on 3/13/15.
//  Copyright (c) 2015 Marty Burolla. All rights reserved.
//

import Foundation

public class PListProxy
{
    public var userData : NSMutableDictionary?
    private var pathToUserData = ""
    
    // MARK: Construction
    
    public init()
    {
        userData = [:]
    }
    
    // MARK: Methods
    
    public func loadUserData()
    {
        self.initializePlist()
        
        self.userData = NSMutableDictionary(contentsOfFile: self.pathToUserData)
    }
    
    public func writeToPlist(key: String, value: String)
    {
        userData?.setObject(value, forKey: key)
        userData?.writeToFile(self.pathToUserData, atomically: true)
    }
    
    private func initializePlist()
    {
        // Copy UserData.plist from the project to the bundle if neccessary.
        let fileManager = NSFileManager.defaultManager()
        let paths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true) as NSArray
        let documentsDirectory = paths[0] as! String
        self.pathToUserData = documentsDirectory.stringByAppendingPathComponent("UserData.plist")
        
        if(!fileManager.fileExistsAtPath(pathToUserData))
        {
            if let bundlePath = NSBundle.mainBundle().pathForResource("UserData", ofType: "plist")
            {
                let resultDictionary = NSMutableDictionary(contentsOfFile: bundlePath)
                fileManager.copyItemAtPath(bundlePath, toPath: pathToUserData, error: nil)
            }
        }
    }
}

