//
//  AppConfigType.swift
//  Macaron
//
//  Created by Kohei Tabata on 7/4/16.
//  Copyright © 2016 Team Hasuike. All rights reserved.
//

import Foundation

protocol AppConfigType {
    static func setupDefaultAppConfig()
    static func didSelectFavoriteStyle() -> Bool
    static func markAsFavoriteStyleSelected()
}
