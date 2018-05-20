//
//  WeekdayBoxOffice.swift
//  MovieInfo
//
//  Created by Jaeseong on 2018. 5. 1..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import UIKit
import XLPagerTabStrip
/// 주중 박스오피스(월~목)
class WeekdayBoxOffice: BoxOffices, IndicatorInfoProvider {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        BoxOffice_Weekday().requestAPI { (response) in
            if let result = response.result.value {
                self.data = result.boxOfficeResult.weeklyBoxOfficeList
                self.tableView.reloadData()
            }
        }
    }
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "위크데이")
    }
}
