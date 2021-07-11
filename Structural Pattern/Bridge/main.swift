//
//  main.swift
//  Bridge
//
//  Created by 윤태민 on 7/11/21.
//

import Foundation

//var obj = Hello()
//print(obj.greeting())
//
//var obj2 = Hello2()
//// 설계 변경으로, 이를 호출하여 실행하는 다른 코드도 함께 변경 되어야 함
//print(obj2.greeting(.Korean))
//
//var obj3 = Hello3()
//print(obj3.ko())
//print(obj3.greeting())

// MARK:- Bridge 적용
//var obj = Language()
//obj.setEnglish(English())
//print(obj.english?.greeting())
//obj.setKorean(Korean())
//print(obj.korean?.greeting())

var obj1 = Messasge(Korean())
print(obj1.greeting())
var obj2 = Messasge(English())
print(obj2.greeting())
