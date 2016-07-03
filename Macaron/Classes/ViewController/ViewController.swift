//
//  ViewController.swift
//  Macaron
//
//  Created by Kohei Tabata on 6/30/16.
//  Copyright © 2016 Team Hasuike. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)

        showWalkthroughIfNeeded()
    }

    //MARK: - private

    private func showWalkthroughIfNeeded() {
        if !AppConfig.didSelectFavoriteStyle() {
            if let viewController: WalkthroughViewController = R.storyboard.main.walkthroughViewController() {
                let navigationController: UINavigationController = UINavigationController(rootViewController: viewController)

                presentViewController(navigationController, animated: true, completion: nil)
            }
        }
    }
}
