//
//  ContentListSelectorButton.swift
//  Macaron
//
//  Created by Kohei Tabata on 7/4/16.
//  Copyright © 2016 Team Hasuike. All rights reserved.
//

import UIKit

class ContentListSelectorButton: UIButton {

    let fashionStyle: FashionStyle

    //MARK: - lifecycle

    init(fashionStyle: FashionStyle) {
        self.fashionStyle = fashionStyle
        super.init(frame: CGRect.zero)

        setTitle(fashionStyle.title(), forState: .Normal)
        setTitleColor(.darkGrayColor(), forState: .Normal)

        titleEdgeInsets = UIEdgeInsets.init(top: 0, left: horizontalMargin(), bottom: 0, right: horizontalMargin())
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    //MARK: - public

    func updateSelectedState(isSelected: Bool) {
        selected = isSelected
        if selected {
            setTitleColor(.whiteColor(), forState: .Normal)
            backgroundColor = .darkGrayColor()
        } else {
            setTitleColor(.darkGrayColor(), forState: .Normal)
            backgroundColor = .whiteColor()
        }
    }

    //MARK: - layout

    override func intrinsicContentSize() -> CGSize {
        let size: CGSize = super.intrinsicContentSize()

        return CGSize.init(width: size.width + horizontalMargin() * 2, height: size.height)
    }

    private func horizontalMargin() -> CGFloat {
        return 8
    }
}
