//
//  FactoryMethod.swift
//  Factory Method
//
//  Created by 윤태민 on 7/4/21.
//

import Foundation

protocol FactoryMethod {
    // 하위 클래스에서 구현해줘야 할 메서드 선언
    func createProduct(_ name: String) -> Product
}

// FactoryMethod 클래스를 통해 인스턴스 생성(또는 메서드)을 따로 분리시켜 의존성을 떨어 뜨림
// 프로토콜 정의에서는 메서드를 구현할 수 없지만, 프로토콜 확장을 통해 메서드를 구현 가능
extension FactoryMethod {
    func getInstance(_ name: String) -> Product {
        // 실제 구현은 하위 클래스(의 메서드)로 위임
        self.createProduct(name)
    }
}
