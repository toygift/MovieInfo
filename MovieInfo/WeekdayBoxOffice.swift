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
class WeekdayBoxOffice: BoxOffice, IndicatorInfoProvider {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let today = Date().subtract(7.days).format(with: "yyyyMMdd", timeZone: TimeZone.autoupdatingCurrent)
        let url = "http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchWeeklyBoxOfficeList.json?key=\(KOBIS_APIKEY)&targetDt=\(today)&weekGb=\(2)"
        
        KobisAPI.shared.boxOffice(url: url, indicator: true) { (res) -> (Void) in
            if let json = res {
                self.data = KobisData.shared.weeklyBoxOffice(response: json)
                self.boxOfficeList = self.data.boxOfficeList
            }
        }
    }
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "위크데이")
    }
}
