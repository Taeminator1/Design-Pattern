//
//  DoorFactory.swift
//  Abstract Factory
//
//  Created by 윤태민 on 7/8/21.
//

import Foundation

// MARK:- 추상 클래스
protocol DoorFactory {
    func assembleDoor()
}

// MARK:- 하위 클래스
class KoreaDoorFactory: DoorFactory {
    func assembleDoor() {
        print("한국형 문 장착 완료")
    }
}

class USADoorFactory: DoorFactory {
    func assembleDoor() {
        print("미국형 문 장착 완료")
    }
}

