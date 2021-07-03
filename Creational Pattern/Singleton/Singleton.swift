//
//  Singleton.swift
//  Singleton
//
//  Created by 윤태민 on 7/3/21.
//

import Foundation

class Singleton {
    private static var instance: Singleton?         // 인스턴스가 기존에 생성되었는지 확인하기 위한 속성
    var number: Int = 0
    
    private init() {
        print("인스턴스 생성 됨")
    }
    
    // 인스턴스가 생성되지 않아도 실행가능하도록 정적으로 선언
    public static func getInstance() -> Singleton {
        if self.instance == nil {
            self.instance = Singleton()
        }
        
        print("인스턴스 반환 됨")
        return instance!
    }
}
