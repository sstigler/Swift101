//
//  PListProxy.swift
//  Swift101_63
//
//  Created by Marty Burolla on 3/13/15.
//  Copyright (c) 2015 Marty Burolla. All rights reserved.
//

import Foundation

public class PListProxy : DataStoreProtocol2
{
    
    func getBadge(userID: Int) -> (Badge)
    {
        var retval = Badge(username:  "Marty", levelNumber: 1);
        return retval;
    }
    
    func getBadges(userID: Int) -> ([Badge])
    {
        var retval = [Badge]();
        
        for i in 0..<4 {
            retval.append( Badge(username: "test", levelNumber: 1))
        }
        
        return retval;
    }
    
}

protocol DataStoreProtocol2
{
    func getBadge(userID: Int) -> (Badge)
    
    func getBadges(userID: Int) -> ([Badge])
}