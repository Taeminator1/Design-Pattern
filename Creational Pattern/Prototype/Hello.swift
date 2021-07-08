//
//  Hello.swift
//  Prototype
//
//  Created by 윤태민 on 7/8/21.
//

import Foundation

class Hello {
    private var message: String
    
    init(_ message: String) {
        print("Hello 객체 생성")
        self.message = message
    }
    
    func setMessage(_ message: String) {
        self.message = message
    }
    
    func getMessage() -> String {
        return self.message
    }
}

class HelloForDeepCopy: NSCopying {
    private var message: String
    
    init(_ message: String) {
        print("HelloForDeepCopy 객체 생성")
        self.message = message
    }
    
    func setMessage(_ message: String) {
        self.message = message
    }
    
    func getMessage() -> String {
        return self.message
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        return HelloForDeepCopy(self.message)
    }
}
