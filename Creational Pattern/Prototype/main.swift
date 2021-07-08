//
//  main.swift
//  Prototype
//
//  Created by 윤태민 on 7/8/21.
//

import Foundation

//var obj1 = Hello("안녕")             // Hello 객체 생성
//print(obj1.getMessage())            // 안녕
//
//var obj2 = obj1
//obj2.setMessage("Hello")
//
//print(obj1.getMessage())            // Hello
//print(obj2.getMessage())            // Hello

var obj1 = HelloForDeepCopy("안녕")  // HelloForDeepCopy 객체 생성
print(obj1.getMessage())            // 안녕

// 프로토타입을 적용
// 객체 생성에 관한 사항들을 알 필요 없이, 기존에 선언한 객체(프로토타입)을 그대로 가져올 수 있음
var obj2 = obj1.copy() as! HelloForDeepCopy         // HelloForDeepCopy 객체 생성
obj2.setMessage("Hello")

print(obj1.getMessage())            // 안녕
print(obj2.getMessage())            // Hello
