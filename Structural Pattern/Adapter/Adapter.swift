//
//  Adapter.swift
//  Adapter
//
//  Created by 윤태민 on 7/10/21.
//

import Foundation

// 어댑터는 기능상 문제없이 동작하는 코드가 단지 인터페이스 차이 때문에 사용할 수 없는 경우 응용 가능

// 원하는 인터페이스에 맞춰 클래스를 새로 만들어도 되지만,
// 은닉성이 부여된 타입에 대해서는 어댑터를 적용하여
// 간단하게 원하는 인터페이스로 변경 가능

// 확장(Extension)이나 상속(Inheritance)를 사용해도 되지만,
// 기존 클래스의 크기가 커지는 문제가 발생

// 프로토콜을 이용한 캡슐화
protocol Adapter {
    func twoTime(_ number: Int) -> Int
    func halfTime(_ number: Int) -> Int
}

// Adapter 프로토콜을 따르는 클래스 생성
class MathWithAdapter: Adapter {
    
    // 기존 클래스의 객체 생성
    private var math = Math()
    
    // 매개변수와 반환값의 타입에 맞춰 메서드 변환
    func twoTime(_ number: Int) -> Int {
        return Int(math.twoTime(Double(number)))
    }
    
    // 매개변수와 반환값의 타입에 맞춰 메서드 변환
    func halfTime(_ number: Int) -> Int {
        return Int(math.halfTime(Double(number)))
    }
}
