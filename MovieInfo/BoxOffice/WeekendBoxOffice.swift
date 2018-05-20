//
//  WeekendBoxOffice.swift
//  MovieInfo
//
//  Created by Jaeseong on 2018. 5. 1..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import UIKit
import XLPagerTabStrip
/// 주말 박스오피스(금~일)
class WeekendBoxOffice: BoxOffices, IndicatorInfoProvider {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        BoxOffice_Weekend().requestAPI { (response) in
            if let result = response.result.value {
                self.data = result.boxOfficeResult.weeklyBoxOfficeList
                self.tableView.reloadData()
            }
        }
    }
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "위캔드")
    }
}
