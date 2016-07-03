//
//  AppConfig.swift
//  Macaron
//
//  Created by Kohei Tabata on 7/4/16.
//  Copyright © 2016 Team Hasuike. All rights reserved.
//

import Foundation

class AppConfig: AppConfigType {
    static func setupDefaultAppConfig() {
        NSUserDefaults.setupDefaultAppConfig()
    }

    static func didSelectFavoriteStyle() -> Bool {
        return NSUserDefaults.didSelectFavoriteStyle()
    }

    static func markAsFavoriteStyleSelected() {
        NSUserDefaults.markAsFavoriteStyleSelected()
    }
}
