//
//  ViewController.swift
//  MovieInfo
//
//  Created by Jaeseong on 2018. 4. 21..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import UIKit
import XLPagerTabStrip
import DateToolsSwift

class DailyBoxOffice: BoxOffices, IndicatorInfoProvider {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewdidload")
        let yesterday = Date().subtract(1.days).format(with: "yyyyMMdd", timeZone: TimeZone.autoupdatingCurrent)
        let url = "https://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=\(KOBIS_APIKEY)&targetDt=\(yesterday)"
        print("url", url)
        BoxOffice_Daily().requestAPI { (response) in
            print("ddd",response.result.value)
            if let result = response.result.value {
//                MKProgress.hide()
                print("asdfasdfasd",result)
                
            }
        }
//        KobisAPI.shared.boxOffice(url: url, indicator: true) { (res) -> (Void) in
//            if let json = res {
//                self.data = KobisData.shared.dailyBoxOffice(response: json)
//                
//                self.tableView.reloadData()
//            }
//        }
    }
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "데일리")
    }
}

