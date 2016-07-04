//
//  ContentListContainerViewController.swift
//  Macaron
//
//  Created by Kohei Tabata on 6/30/16.
//  Copyright © 2016 Team Hasuike. All rights reserved.
//

import UIKit
import SnapKit

class ContentListContainerViewController: UIViewController, UIPageViewControllerDataSource {

    @IBOutlet weak var contentListSelectorView: ContentListSelectorView!
    private let pageViewController: UIPageViewController = UIPageViewController(transitionStyle: .Scroll,
                                                                                navigationOrientation: .Horizontal, options: nil)
    private var viewControllers: [ContentListViewController] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        automaticallyAdjustsScrollViewInsets = false

        setupComponents()
        setupLayout()
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)

        showWalkthroughIfNeeded()
    }

    //MARK: - private

    private func setupComponents() {
        viewControllers = FashionStyle.allValues().map({
            let viewController: ContentListViewController = R.storyboard.main.contentListViewController()!
            viewController.updateStyle($0)

            return viewController
        })

        pageViewController.dataSource = self
        pageViewController.setViewControllers([viewControllers[0]], direction: .Forward, animated: true, completion: nil)

        view.addSubview(pageViewController.view)
        addChildViewController(pageViewController)
    }

    private func setupLayout() {
        pageViewController.view.snp_makeConstraints { (make) in
            make.top.equalTo(self.contentListSelectorView.snp_bottom)
            make.left.equalTo(self.view)
            make.right.equalTo(self.view)
            make.bottom.equalTo(self.view)
        }
    }

    private func showWalkthroughIfNeeded() {
        if !AppConfig.didSelectFavoriteStyle() {
            let viewController: WalkthroughViewController = R.storyboard.main.walkthroughViewController()!
            let navigationController: UINavigationController = UINavigationController(rootViewController: viewController)

            presentViewController(navigationController, animated: true, completion: nil)
        }
    }

    //MARK: - UIPageViewControllerDataSource

    func pageViewController(pageViewController: UIPageViewController,
                            viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        guard let
            viewController = viewController as? ContentListViewController,
            index = viewControllers.indexOf(viewController) where index > 0 else {
                return nil
        }

        let previousIndex: Int = index - 1

        return viewControllers[previousIndex]
    }

    func pageViewController(pageViewController: UIPageViewController,
                            viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        guard let
            viewController = viewController as? ContentListViewController,
            index = viewControllers.indexOf(viewController) where index < viewControllers.count - 1 else {
                return nil
        }

        let nextIndex: Int = index + 1

        return viewControllers[nextIndex]
    }
}
