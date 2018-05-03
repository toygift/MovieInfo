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
        MKProgress.config.activityIndicatorColor = .darkGray
        MKProgress.config.hudColor = .clear
        
    }
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let storyboard = UIStoryboard.storyboard(stroyboard: .Movie)
        let topRate = storyboard.instantiateViewController(withIdentifier: "TopRate")
        return [topRate]
    }
}
