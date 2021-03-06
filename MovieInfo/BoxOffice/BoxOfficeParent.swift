//
//  BoxOfficeParent.swift
//  MovieInfo
//
//  Created by toygift on 2018. 5. 2..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class BoxOfficeParent: Parent {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let storyboard = UIStoryboard.storyboard(stroyboard: .BoxOffice)
        let daily = storyboard.instantiateViewController(withIdentifier: "Daily")
        let weekend = storyboard.instantiateViewController(withIdentifier: "Weekend")
        let weekday = storyboard.instantiateViewController(withIdentifier: "Weekday")
        let weekly = storyboard.instantiateViewController(withIdentifier: "Weekly")
        return [daily, weekend, weekday, weekly]
    }
}
