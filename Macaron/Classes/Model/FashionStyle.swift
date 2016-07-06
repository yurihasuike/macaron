//
//  FashionStyle.swift
//  Macaron
//
//  Created by Kohei Tabata on 7/4/16.
//  Copyright © 2016 Team Hasuike. All rights reserved.
//

import Foundation

enum FashionStyle: Int {
    case Casual
    case Feminine
    case NaturalStyle
    case Bohemian
    case AmericanCasual
    case HarajukuStyle
    case Ethnic
    case Formal

    static func allValues() -> [FashionStyle] {
        return [Int](FashionStyle.Casual.rawValue...FashionStyle.Formal.rawValue).map({ FashionStyle(rawValue: $0)! })
    }

    func title() -> String {
        switch self {
        case .Casual:           return R.string.localizable.fashionStyleCasualTitle()
        case .Feminine:         return R.string.localizable.fashionStyleFeminineTitle()
        case .NaturalStyle:     return R.string.localizable.fashionStyleNaturalStyleTitle()
        case .Bohemian:         return R.string.localizable.fashionStyleBohemianTitle()
        case .AmericanCasual:   return R.string.localizable.fashionStyleAmericanCasualTitle()
        case .HarajukuStyle:    return R.string.localizable.fashionStyleHarajukuStyleTitle()
        case .Ethnic:           return R.string.localizable.fashionStyleEthnicTitle()
        case .Formal:           return R.string.localizable.fashionStyleFormalTitle()
        }
    }
}
