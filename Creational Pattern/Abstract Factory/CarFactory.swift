//
//  CarFactory.swift
//  Abstract Factory
//
//  Created by 윤태민 on 7/8/21.
//

import Foundation

// MARK:- 추상 클래스
// 추상화를 통해 하위 클래스에 다형성 부여
// KoreaCarFactory 또는 USACarFactory 클래스에 따라 메서드를 독립적으로 구현
protocol CarFactory {
    func createTire() -> TireFactory
    func createDoor() -> DoorFactory
}

// MARK:- 하위 클래스
// 하위 클래스는 조건을 매개변수로 하여 객체를 생성하지 않고,
// 각각을 직접 2개의 메서드(createTire, createDoor)로 구현
class KoreaCarFactory: CarFactory {
    func createTire() -> TireFactory {
        return KoreaTireFactory()
    }
    
    func createDoor() -> DoorFactory {
        return KoreaDoorFactory()
    }
}

class USACarFactory: CarFactory {
    func createTire() -> TireFactory {
        return USATireFactory()
    }
    
    func createDoor() -> DoorFactory {
        return USADoorFactory()
    }
}

// 생성 클래스를 그룹별로 분리할 수 있으며, 클래스의 군을 쉽게 변경 가능
// createTire와 createDoor로 분리 가능
// createTire나 createDoor 메서드의 구현부를 독립적으로 수정 가능

// 새로운 종류의 군을 추가하는 것이 어렵다.
// 예를 들어, CarFactory에 createEngine() 추상 메서드를 추가한다면,
// CarFactory 프로토콜을 따르는 모든 클래스를 변경해 주어야 하고,
// createEngine이 반환하는 타입을 정의하는 것이 필요하다. 
