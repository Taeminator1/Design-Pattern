//
//  main.swift
//  Abstract Factory
//
//  Created by 윤태민 on 7/8/21.
//

import Foundation

// 추상 팩토리는 여러 개의 팩토리 메서드를 그룹으로 묶은 것과 유사
// 팩토리 메서드는 추상 클래스와 하위 클래스를 1개로만 구성하는 반면,
// 추상 팩토리는 다형성을 활용하여 다수의 하위 클래스를 생성하고 관리

var fac: CarFactory = KoreaCarFactory()
var tire: TireFactory = fac.createTire()
tire.assembleTire()
var door: DoorFactory = fac.createDoor()
door.assembleDoor()


fac = USACarFactory()
tire = fac.createTire()
tire.assembleTire()
door = fac.createDoor()
door.assembleDoor()

