//
//  WalkthroughViewController.swift
//  Macaron
//
//  Created by Kohei Tabata on 7/4/16.
//  Copyright © 2016 Team Hasuike. All rights reserved.
//

import UIKit

class WalkthroughViewController: UIViewController {

    //MARK: - IBAction

    @IBAction func tapButton() {
        AppConfig.markAsFavoriteStyleSelected()
        dismissViewControllerAnimated(true, completion: nil)
    }
}
