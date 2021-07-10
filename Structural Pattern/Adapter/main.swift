//
//  main.swift
//  Adapter
//
//  Created by 윤태민 on 7/10/21.
//

import Foundation


// 기존에 존재하는 클래스 Math로는 Double 형 데이터만 처리 가능
//var obj = Math()
//print(obj.twoTime(3.6))     // 7.2
//print(obj.halfTime(8.1))    // 4.05

// Int 형 데이터를 처리하는 MathWithAdapter를 이용하여
// Int 형 데이터 처리 가능
var obj = MathWithAdapter()
print(obj.twoTime(3))
print(obj.halfTime(9))




