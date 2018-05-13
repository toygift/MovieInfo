//
//  TvParent.swift
//  MovieInfo
//
//  Created by Jaeseong on 2018. 5. 12..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class TvParent: Parent {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let storyboard = UIStoryboard.storyboard(stroyboard: .Tv)
        let airingToday = storyboard.instantiateViewController(withIdentifier: "TV_AIRINGTODAY")
        let onTheAir = storyboard.instantiateViewController(withIdentifier: "TV_ONTHEAIR")
        let popular = storyboard.instantiateViewController(withIdentifier: "TV_POPULAR")
        let toprate = storyboard.instantiateViewController(withIdentifier: "TV_TOPRATE")
        return [airingToday, onTheAir, popular, toprate]
    }
}

