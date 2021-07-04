//
//  Product.swift
//  Factory Method
//
//  Created by 윤태민 on 7/4/21.
//

import Foundation

class Product {
    private var name: String
    
    init(_ name: String) {
        self.name = name
    }
    
    public func printName() {
        print("\(name)")
    }
}
