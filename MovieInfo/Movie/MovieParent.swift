//
//  MovieParent.swift
//  MovieInfo
//
//  Created by toygift on 2018. 5. 4..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import UIKit
import XLPagerTabStrip
import MKProgress

class MovieParent: Parent {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let storyboard = UIStoryboard.storyboard(stroyboard: .Movie)
        let topRate = storyboard.instantiateViewController(withIdentifier: "Toprate")
        let popular = storyboard.instantiateViewController(withIdentifier: "Popular")
        let nowPlaying = storyboard.instantiateViewController(withIdentifier: "Nowplaying")
        let upComing = storyboard.instantiateViewController(withIdentifier: "Upcoming")
        let latest = storyboard.instantiateViewController(withIdentifier: "Latest")
        return [topRate, popular, nowPlaying, upComing, latest]
    }
}
