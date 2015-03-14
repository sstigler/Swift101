//
//  Swift101_63Tests.swift
//  Swift101_63Tests
//
//  Created by Marty Burolla on 3/13/15.
//  Copyright (c) 2015 Marty Burolla. All rights reserved.
//

import UIKit
import XCTest


class Swift101_63Tests: XCTestCase
{
    override func setUp()
    {
        super.setUp()
    }
    
    override func tearDown()
    {
        super.tearDown()
    }
    
    func testExample()
    {
        var pp = PListProxy()
        var bb = pp.getBadge(5150)
        
        println("The username is \(bb.username).")
        
        var shoppingList = bb.getShoppingList(1)
        
        let b = Badge(username: "test", levelNumber: 1)
        var l = pp.getBadges(1)
        
        XCTAssert(true, "Pass")
    }
    
    /*
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    */
}


