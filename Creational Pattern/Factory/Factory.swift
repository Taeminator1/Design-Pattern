//
//  Factory.swift
//  Factory
//
//  Created by 윤태민 on 7/1/21.
//

import Foundation

// Factory 클래스를 통해 인스턴스 생성을 따로 분리시켜 의존성을 떨어 뜨림
class Factory {
    static public func getInstance(_ type: LanguageType) -> Language {      // 인스턴스 생성
        switch(type) {
        case .Ko:
            return Korean()
        case .En:
            return English()
        }
    }
}
