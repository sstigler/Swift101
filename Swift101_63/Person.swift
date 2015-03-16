//
//  Person.swift
//  Swift101_63
//
//  Created by Marty Burolla on 3/16/15.
//  Copyright (c) 2015 Marty Burolla. All rights reserved.
//

import Foundation


class Person
{
    var firstName = ""
    var lastName = ""
    var age = 0
    
    // MARK: Construction
    
    init()
    {
        firstName = "John"
        lastName = "Doe"
        age = 12
        
        
    }
    
    // MARK: Methods
    
    
    func speak() -> String
    {
        return "My name is \(firstName) " + "\(lastName)" + "."
    }
    
    
    
    
}

