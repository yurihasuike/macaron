//
//  AppDelegate.swift
//  Macaron
//
//  Created by Kohei Tabata on 6/30/16.
//  Copyright © 2016 Team Hasuike. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        CrashReporter.setup()
        return true
    }
}
