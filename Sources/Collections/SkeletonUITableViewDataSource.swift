//
//  SkeletonUITableViewDataSource.swift
//  SkeletonView-iOS
//
//  Created by Juanpe Catalán on 06/11/2017.
//  Copyright © 2017 SkeletonView. All rights reserved.
//

import UIKit

public protocol SkeletonTableViewDataSource: UITableViewDataSource, UITableViewDelegate {
    func numSections(in collectionSkeletonView: UITableView) -> Int
    func collectionSkeletonView(_ skeletonView: UITableView, numberOfRowsInSection section: Int) -> Int
    func collectionSkeletonView(_ skeletonView: UITableView, cellIdenfierForRowAt indexPath: IndexPath) -> ReusableCellIdentifier
    func collectionSkeletonView(_ skeletonView: UITableView, hightForCellAtIndexPath indexPath: IndexPath) -> CGFloat
    func collectionSkeletonView(_ skeletonView: UITableView, hightForHeaderInSection section: Int) -> CGFloat
    func collectionSkeletonView(_ skeletonView: UITableView, viewForHeaderInSection section: Int) -> UIView?
}

public extension SkeletonTableViewDataSource {
    
    func collectionSkeletonView(_ skeletonView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Int(ceil(skeletonView.frame.height/skeletonView.rowHeight))
    }
    
    func numSections(in collectionSkeletonView: UITableView) -> Int { return 1 }
}
