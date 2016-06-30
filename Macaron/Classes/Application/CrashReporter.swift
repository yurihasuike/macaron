//
//  CrashReporter.swift
//  Macaron
//
//  Created by Kohei Tabata on 6/30/16.
//  Copyright © 2016 Team Hasuike. All rights reserved.
//

import Foundation
import Crashlytics
import Fabric

class CrashReporter {
    class func setup() {
        Fabric.with([Crashlytics.self])
    }
}
