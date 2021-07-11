//
//  Bridge.swift
//  Bridge
//
//  Created by 윤태민 on 7/11/21.
//

import Foundation

// Implementor
protocol Implementor {
    func greeting() -> String
}

// ConcreteImplementor
class English: Implementor {
    func greeting() -> String{
        return "Hello"
    }
}

class Korean: Implementor {
    func greeting() -> String{
        return "안녕"
    }
}

//class Language {
//    var english: Implementor?
//    var korean: Implementor?
//
//    func setEnglish(_ obj: Implementor) {
//        self.english = obj
//    }
//
//    func setKorean(_ obj: Implementor) {
//        self.korean = obj
//    }
//}

// Abstarct
protocol Language {
    var language: Implementor { get set }
    
    func greeting() -> String
}


class Messasge: Language {
    var language: Implementor
    
    init(_ language: Implementor) {
        self.language = language
    }
    
    func greeting() -> String {
        return self.language.greeting()
    }
}

// 동작하고자 하는 기능을 선언부(추상화)와 구현부로 분리
// 새로운 기능을 확장하지 않고 위임으로 처리
// 브릿지는 추상 레벨 간의 연결을 처리
// 구현과 추상 부분을 2개의 계층으로 분리할 수 있으며, 분리된 2개의 추상 계층과 구현 계층은 독립적인 확장 가능
