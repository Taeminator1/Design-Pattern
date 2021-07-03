//
//  main.swift
//  Singleton
//
//  Created by 윤태민 on 7/3/21.
//

import Foundation

print("Hello, World!")

//var obj1 = NonSingleton(1)  // number가 1인 인스턴스 생성
//var obj2 = NonSingleton(1)  // number가 1인 인스턴스 생성
//obj1 === obj2 ? print("같은 인스턴스") : print("다른 인스턴스") // 다른 인스턴스
//
//obj1.number = 3
//print(obj2.number)          // 1

// Static Class를 이용한 값 공유
//NonSingleton.number = 1
//print(NonSingleton.number)      // 1
//NonSingleton.number = 3
//print(NonSingleton.number)      // 3

// Singleton Class를 이용한 값 공유
var obj1 = Singleton.getInstance()
var obj2 = Singleton.getInstance()
obj1 === obj2 ? print("같은 인스턴스") : print("다른 인스턴스") // 같은 인스턴스

obj1.number = 3
print(obj2.number)          // 3
