//
//  ProductB.swift
//  Factory Method
//
//  Created by 윤태민 on 7/4/21.
//

import Foundation

// FactoryMethod 프로토콜을 채택하여 ProductB 클래스 구현
class ProductB: FactoryMethod {
    
    // FactoryMethod 프로토콜에서 위임받은 createProduct 구현
    func createProduct(_ name: String) -> Product {
        print("Method from ProductB class")
        return Product(name)
    }
}
