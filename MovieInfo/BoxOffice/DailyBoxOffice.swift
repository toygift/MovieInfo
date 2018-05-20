//
//  ViewController.swift
//  MovieInfo
//
//  Created by Jaeseong on 2018. 4. 21..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class DailyBoxOffice: BoxOffices, IndicatorInfoProvider {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        BoxOffice_Daily().requestAPI { (response) in
            if let result = response.result.value {
                self.data = result.boxOfficeResult.dailyBoxOfficeList
                self.tableView.reloadData()
            }
        }
    }
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "데일리")
    }
}

