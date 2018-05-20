//
//  AiringToday.swift
//  MovieInfo
//
//  Created by Jaeseong on 2018. 5. 11..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import UIKit
import XLPagerTabStrip
import MKProgress

class TvAiringToday: Tvs, IndicatorInfoProvider {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TV_AiringTodayRequest().requestAPI { (response) in
            if let result = response.result.value {
                MKProgress.hide()
                self.tvs = result
            }
        }
    }
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "AIRING")
    }
}
