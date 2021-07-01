//
//  Language.swift
//  Factory
//
//  Created by 윤태민 on 7/1/21.
//

import Foundation

enum LanguageType {
    case Ko;
    case En;
}

protocol Language {
    func hello() -> String
}

class Korean: Language {
    public func hello() -> String {
        return "안녕"
    }
}

class English: Language {
    public func hello() -> String {
        return "Hello"
    }
}
