//
//  WeekendBoxOffice.swift
//  MovieInfo
//
//  Created by Jaeseong on 2018. 5. 1..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import UIKit
/// 주말 박스오피스(금~일)
class WeekendBoxOffice: BoxOffice {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let today = Date().subtract(7.days).format(with: "yyyyMMdd", timeZone: TimeZone.current)
        KobisAPI.shared.boxOffice(type: "weekly", weekGb: "1", date: today, indicator: true) { (res) -> (Void) in
            if let json = res {
                self.data = KobisData.shared.weeklyBoxOffice(response: json)
                self.boxOfficeList = self.data.boxOfficeList
                self.navigationItem.title = self.data.boxofficeType
            }
        }
    }
}
