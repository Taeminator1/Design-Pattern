//
//  Hello.swift
//  Bridge
//
//  Created by 윤태민 on 7/11/21.
//

import Foundation

enum Lang {
    case Korean
    case English
}

class Hello {
    public func greeting() -> String {
        return "Hello"
    }
}

// 분기를 통한 클래스 재 설계
class Hello2 {
    public func greeting(_ lang: Lang) -> String {
        if lang == .Korean {
            return "안녕"
        }
        else {
            return "Hello"
        }
    }
}

// 클래스의 계층을 분리하고 기능 확장
// 강력한 결합 관계와 불필요한 메서드도 상속 됨
// (greeting 메서드가 불필요할 수 있지만, 상속을 통해 클래스 크기가 커짐)
class Hello3: Hello {
    public func ko() -> String {
        return "안녕"
    }
}

