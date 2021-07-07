//
//  main.swift
//  Factory Method
//
//  Created by 윤태민 on 7/4/21.
//

import Foundation

// with Factory
// getInstance 메서드의 definition을 보면, 구현부로 이동
// (선언과 구현이 같은 곳에서 이루어짐)
var product = Factory.getInstance("product from Factory")
product.printName()


// with Factory Method
// create 메서드의 definition을 보면, 선언부로 이동
// (선언과 구현이 다른 곳에서 이루어짐, 은닉성 확립)
var factory2 = Factory2()
var product2 = factory2.create("product from Factory Method")
product2.printName()

