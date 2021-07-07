//
//  Language.swift
//  Factory
//
//  Created by 윤태민 on 7/1/21.
//

import Foundation

enum LanguageType {
    case Ko
    case En
}

protocol Language {
    func hello() -> String
}

// 클래스의 이름이 변경되어도 인스턴스화하는 부부을 변경할 필요 없이 Factory 클래스만 수정하면 됨
class Korean: Language {
    public func hello() -> String {
        return "안녕"
    }
}

// 클래스의 이름이 변경되어도 인스턴스화하는 부부을 변경할 필요 없이 Factory 클래스만 수정하면 됨
class English: Language {
    public func hello() -> String {
        return "Hello"
    }
}
