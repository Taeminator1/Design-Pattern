//
//  AbstractFactory.swift
//  Factory Method
//
//  Created by 윤태민 on 7/4/21.
//

import Foundation

// protocol(선언부)
protocol AbstractFactory {
    // 하위 클래스에서 구현해줘야 할 메서드 선언(추상 메서드)
    func createProduct(_ name: String) -> Product
}

// extension(공통 메서드 구현 가능)
// FactoryMethod 클래스를 통해 인스턴스 생성(또는 메서드)을 따로 분리시켜 의존성을 떨어 뜨림
// 프로토콜 정의에서는 메서드를 구현할 수 없지만, 프로토콜 확장을 통해 메서드를 구현 가능
// 단일 그룹으로 제한하기 위해 Singleton과 결합하여 사용하기도 함
extension AbstractFactory {
    func create(_ name: String) -> Product {
        return self.createProduct(name)
    }
}
