//
//  LoginManager.swift
//  Swift101_63
//
//  Created by Marty Burolla on 3/17/15.
//  Copyright (c) 2015 Marty Burolla. All rights reserved.
//

import Foundation

protocol LoginManagerDelegate: class
{
    func didFinishLoggingIn(loginManager: LoginManager, text: String)
}

class LoginManager
{
    weak var delegate: LoginManagerDelegate?
    
    func login(username: String, password: String)
    {
        // Make call to auth endpoint.
        delegate?.didFinishLoggingIn(self, text: "OK")
    }
    
    func loginWithCompletion(username: String, password: String, completion: (result: String)->())
    {
        // Make call to auth endpoint.
        
        completion(result: "OK")
    }
}


