//
//  main.swift
//  Factory
//
//  Created by 윤태민 on 6/30/21.
//

import Foundation

// without Factory
//var obj = HelloWithoutFactory(Korean())        // 인스턴스의 생성과 사용을 분리하지 않음
//print(obj.greeting(to: "Taeminator"))          // 안녕, Taeminator.
//
//obj = HelloWithoutFactory(English())           // 인스턴스의 생성과 사용을 분리하지 않음
//print(obj.greeting(to: "Taeminator"))          // Hello, Taeminator.


// with Factory
let obj = HelloWithFactory()
print(obj.greeting(.Ko, to: "Taeminator"))     // 인스턴스 사용
                                                // 안녕, Taeminator.
print(obj.greeting(.En, to: "Taeminator"))     // 인스턴스 사용
                                                // Hello, Taeminator.
