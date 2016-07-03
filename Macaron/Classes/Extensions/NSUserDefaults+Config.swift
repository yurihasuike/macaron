//
//  NSUserDefaults+Config.swift
//  Macaron
//
//  Created by Kohei Tabata on 7/4/16.
//  Copyright © 2016 Team Hasuike. All rights reserved.
//

import Foundation

extension NSUserDefaults {
    private static let bundleIdentifier: String           = NSBundle.mainBundle().bundleIdentifier!
    private static let isFavoriteStyleSelectedKey: String = "\(bundleIdentifier).isFavoriteStyleSelectedKey"

    //MARK: -

    class func setupDefaultAppConfig() {
        let dictionary: [String : AnyObject] = [isFavoriteStyleSelectedKey : false]

        standardUserDefaults().registerDefaults(dictionary)
    }

    //MARK: - isFavoriteStyleSelected

    class func didSelectFavoriteStyle() -> Bool {
        return standardUserDefaults().boolForKey(isFavoriteStyleSelectedKey)
    }

    class func markAsFavoriteStyleSelected() {
        standardUserDefaults().setBool(true, forKey: isFavoriteStyleSelectedKey)
        standardUserDefaults().synchronize()
    }
}
