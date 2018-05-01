//
//  ViewController.swift
//  MovieInfo
//
//  Created by Jaeseong on 2018. 4. 21..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import UIKit
import SwiftyJSON
import DateToolsSwift
    
class DailyBoxOffice: BoxOffice {
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let yesterday = Date().subtract(1.days).format(with: "yyyyMMdd", timeZone: TimeZone.current)
        
        KobisAPI.shared.dayBoxOffice(type: "daily", date: yesterday, indicator: true) { (res) -> (Void) in
            if let json = res {
                self.data = KobisData.shared.dailyBoxOffice(response: json)
                self.boxOfficeList = self.data.boxOfficeList
                self.navigationItem.title = Date().subtract(1.days).format(with: "yyyy년MM월dd일", timeZone: TimeZone.current)
                print(self.data)
            }
        }
    }
}
