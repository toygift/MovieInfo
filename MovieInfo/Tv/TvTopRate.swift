//
//  TvTopRate.swift
//  MovieInfo
//
//  Created by Jaeseong on 2018. 5. 13..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import UIKit
import XLPagerTabStrip
import MKProgress

class TvTopRate: Tvs, IndicatorInfoProvider {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TV_TopRateRequest().requestTmdb { (response) in
            if let result = response.result.value {
                MKProgress.hide()
                self.tvs = result
            }
        }
    }
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "TOP RATE")
    }
}

