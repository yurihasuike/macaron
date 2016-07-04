//
//  ContentListViewController.swift
//  Macaron
//
//  Created by Kohei Tabata on 7/4/16.
//  Copyright © 2016 Team Hasuike. All rights reserved.
//

import UIKit

class ContentListViewController: UIViewController {
    private(set) var fashionStyle: FashionStyle!

    //MARK: - public

    func updateStyle(fashionStyle: FashionStyle) {
        //TODO: implement contents
        self.fashionStyle = fashionStyle
        switch fashionStyle {
        case .Casual:           view.backgroundColor = UIColor.redColor()
        case .Feminine:         view.backgroundColor = UIColor.blueColor()
        case .NaturalStyle:     view.backgroundColor = UIColor.greenColor()
        case .Bohemian:         view.backgroundColor = UIColor.yellowColor()
        case .AmericanCasual:   view.backgroundColor = UIColor.purpleColor()
        case .HarajukuStyle:    view.backgroundColor = UIColor.darkGrayColor()
        case .Ethnic:           view.backgroundColor = UIColor.greenColor()
        case .Formal:           view.backgroundColor = UIColor.brownColor()
        }
    }
}
