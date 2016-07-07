//
//  ContentListSelectorView.swift
//  Macaron
//
//  Created by Kohei Tabata on 7/4/16.
//  Copyright © 2016 Team Hasuike. All rights reserved.
//

import UIKit

@IBDesignable
class ContentListSelectorView: UIScrollView {

    private var buttons: [ContentListSelectorButton] = []

    //MARK: - lifecycle

    override init(frame: CGRect) {
        super.init(frame: frame)

        setupComponents()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        setupComponents()
    }

    //MARK: - public

    func updateSelectedStyle(style: FashionStyle) {
        var minX: CGFloat = 0
        for button in buttons {
            button.updateSelectedState(button.fashionStyle == style)
            if button.selected {
                minX = button.frame.minX
            }
        }

        let offsetX: CGFloat
        if minX + frame.width < contentSize.width {
            offsetX = minX
        } else {
            offsetX = contentSize.width - frame.width
        }

        setContentOffset(CGPoint.init(x: offsetX, y: 0), animated: true)
    }

    //MARK: - private

    private func setupComponents() {
        showsVerticalScrollIndicator   = false
        showsHorizontalScrollIndicator = false

        var minX: CGFloat   = 0
        let minY: CGFloat   = 0
        let height: CGFloat = 44

        for fashionStyle in FashionStyle.allValues() {
            let button: ContentListSelectorButton = ContentListSelectorButton(fashionStyle: fashionStyle)

            button.frame = CGRect.init(x: minX, y: minY, width: button.intrinsicContentSize().width, height: height)
            buttons.append(button)
            addSubview(button)

            minX = button.frame.maxX

            contentSize = CGSize.init(width: minX, height: height)
        }
    }
}
