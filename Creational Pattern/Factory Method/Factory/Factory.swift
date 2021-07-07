//
//  Factory.swift
//  Factory Method
//
//  Created by 윤태민 on 7/4/21.
//

import Foundation

// Factory 클래스를 통해 인스턴스 생성을 따로 분리시켜 의존성을 떨어 뜨림
class Factory {
    static public func getInstance(_ name: String) -> Product {
        return Product(name)
    }
}
