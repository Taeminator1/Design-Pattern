//
//  Factory2.swift
//  Factory Method
//
//  Created by 윤태민 on 7/7/21.
//

import Foundation

class Factory2: AbstractFactory {
    init() {
        print("Factory2 객체 생성")
    }
    
    func createProduct(_ name: String) -> Product {
        return Product(name)
    }
}
