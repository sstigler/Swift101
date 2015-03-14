//
//  Badge.swift
//  Swift101_63
//
//  Created by Marty Burolla on 3/13/15.
//  Copyright (c) 2015 Marty Burolla. All rights reserved.
//

import Foundation


public class Badge
{
    var username: String = ""
    var levelNumber: Int = 0
    var shoppingList = [String]()
    
    
    public init(username: String, levelNumber: Int)
    {
        self.username = username
        self.levelNumber = levelNumber
        self.shoppingList = ["water", "milk"]
    }
    
    
    public func getShoppingList(userID: Int) -> ([String])
    {
        return shoppingList;
    }
    
}