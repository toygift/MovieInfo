//
//  AiringToday.swift
//  MovieInfo
//
//  Created by Jaeseong on 2018. 5. 11..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class AiringToday: Tvs, IndicatorInfoProvider {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TV_AiringTodayRequest().requestTmdb { (response) in
            if let result = response.result.value {
                self.tvs = result
            }
        }
    }
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "airing")
    }
}
