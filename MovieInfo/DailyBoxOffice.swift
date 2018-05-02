//
//  ViewController.swift
//  MovieInfo
//
//  Created by Jaeseong on 2018. 4. 21..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import UIKit
import XLPagerTabStrip
    
class DailyBoxOffice: BoxOffice, IndicatorInfoProvider{
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let yesterday = Date().subtract(1.days).format(with: "yyyyMMdd", timeZone: TimeZone.autoupdatingCurrent)
        
        KobisAPI.shared.boxOffice(type: "daily", weekGb: nil, date: yesterday, indicator: true) { (res) -> (Void) in
            if let json = res {
                print(json)
                self.data = KobisData.shared.dailyBoxOffice(response: json)
                self.boxOfficeList = self.data.boxOfficeList
            }
        }
    }
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "데일리")
    }
}
