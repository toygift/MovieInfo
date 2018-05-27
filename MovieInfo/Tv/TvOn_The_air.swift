//
//  On_The_air.swift
//  MovieInfo
//
//  Created by Jaeseong on 2018. 5. 13..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import UIKit
import XLPagerTabStrip
import MKProgress

class TvOn_The_air: Tvs, IndicatorInfoProvider {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TV_OnTheAirRequest().requestAPI { (response) in
            if let result = response.result.value {
                MKProgress.hide()
                self.tvs = result
                self.tableView.reloadData()
            }
        }
    }
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "ON THE AIR")
    }
}
