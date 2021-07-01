//
//  Hello.swift
//  Factory
//
//  Created by 윤태민 on 7/1/21.
//

import Foundation

class HelloWithoutFactory {
    private var len: Language

    init(_ len: Language) {                 // 인스턴스 생성
        self.len = len
    }

    public func greeting(to: String = "") -> String {
        return len.hello() + ", \(to)."     // 인스턴스 샤옹
    }
}

class HelloWithFactory {
    public func greeting(_ type: LanguageType, to: String = "") -> String {
        return Factory.getInstance(type).hello() + ", \(to)."       // 인스턴스 사용
    }
}
