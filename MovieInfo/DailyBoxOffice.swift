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

class DailyBoxOffice: BoxOffice, IndicatorInfoProvider {
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let yesterday = Date().subtract(1.days).format(with: "yyyyMMdd", timeZone: TimeZone.autoupdatingCurrent)
        let url = "https://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=\(KOBIS_APIKEY)&targetDt=\(yesterday)"
        KobisAPI.shared.boxOffice(url: url, indicator: true) { (res) -> (Void) in
            if let json = res {
                self.data = KobisData.shared.dailyBoxOffice(response: json)
                self.boxOfficeList = self.data.boxOfficeList
            }
        }
        ARequset().requestTV { (response) in
            print("가나다라마바사",response)
        }
//        ARequset().request { [weak self] response in
//            print("sfsfsdsdf")
//            if let a = response.result.value { // a is A, not Any
//                print("AAaksdjflksdjlfkjsdlkfjlj",a)
//            }
//        }
    }
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "데일리")
    }
}
