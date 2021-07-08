//
//  TireFactory.swift
//  Abstract Factory
//
//  Created by 윤태민 on 7/8/21.
//

import Foundation

// MARK:- 추상 클래스
protocol TireFactory {
    func assembleTire()
}

// MARK:- 하위 클래스
class KoreaTireFactory: TireFactory {
    func assembleTire() {
        print("한국형 타이어 장착 완료")
    }
}

class USATireFactory: TireFactory {
    func assembleTire() {
        print("미국형 타이어 장착 완료")
    }
}

