//
//  WeeklyBoxOffice.swift
//  MovieInfo
//
//  Created by Jaeseong on 2018. 5. 1..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import UIKit
import XLPagerTabStrip

/// 주간박스오피스(월~일)
class WeeklyBoxOffice: BoxOffices,IndicatorInfoProvider {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        BoxOffice_Weekly().requestAPI { (response) in
            if let result = response.result.value {
                print(result)
                self.data = result.boxOfficeResult.weeklyBoxOfficeList
                self.tableView.reloadData()
            }
        }
    }
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "위클리")
    }
}

