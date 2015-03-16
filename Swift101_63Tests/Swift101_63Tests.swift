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
    // MARK: Lifecycle
    
    override func setUp()
    {
        super.setUp()
    }
    
    override func tearDown()
    {
        super.tearDown()
    }
    
    // MARK: PList Tests
    
    func testPList()
    {
        var plp = PListProxy()
        plp.loadUserData()
        
        let userData = plp.userData
        println("\(userData)")
        
        plp.writeToPlist("2", value: "Two")
        println("\(userData)")
        
        plp.writeToPlist( "3", value: "Three")
        println("\(userData)")
        
        
        
        XCTAssert(true, "Pass")
    }

}




