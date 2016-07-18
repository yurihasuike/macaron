//
//  ContentListDataSource.swift
//  Macaron
//
//  Created by Yutaro Muta on 7/18/16.
//  Copyright © 2016 Team Hasuike. All rights reserved.
//

import UIKit

class ContentListDataSource: NSObject, UITableViewDataSource {
    
    var items: Array<Int> = []
    
    override init() {
        super.init()
        for i in 1 ..< 20 {
            items.append(i)
        }
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        guard let contentListCell = R.nib.contentListCell.firstView(owner: nil, options: nil), killerMachineImage = R.image.rankingImage() else {
            fatalError("Could not create ContentListCell")
        }
        contentListCell.setProperties(items[indexPath.row], image: killerMachineImage)
        return contentListCell
    }
}
