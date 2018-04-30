//
//  KobisData.swift
//  MovieInfo
//
//  Created by Jaeseong on 2018. 5. 1..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import Foundation
import SwiftyJSON

class KobisData: NSObject {
    static let shared = KobisData()
    
    func todayBoxOffice(response json: JSON) -> BoxOfficeResult {
        let today = BoxOfficeResult(dailyBoxOfficeList: json["boxOfficeResult"]["dailyBoxOfficeList"].arrayValue.map({ (json) -> DailyBoxOfficeList in
            let daily = DailyBoxOfficeList(movieNm: json["movieNm"].stringValue, rankOldAndNew: json["rankOldAndNew"].stringValue, salesAmt: json["salesAmt"].stringValue, rankInten: json["rankInten"].stringValue, scrnCnt: json["scrnCnt"].stringValue, openDt: json["openDt"].stringValue, audiCnt: json["audiCnt"].stringValue, audiInten: json["audiInten"].stringValue, movieCD: json["movieCD"].stringValue, audiChange: json["audiChange"].stringValue, rnum: json["rnum"].stringValue, salesShare: json["salesShare"].stringValue, audiAcc: json["audiAcc"].stringValue, salesChange: json["salesChange"].stringValue, showCnt: json["showCnt"].stringValue, rank: json["rank"].stringValue, salesInten: json["salesInten"].stringValue, salesAcc: json["salesAcc"].stringValue)
            return daily
        }), showRange: json["boxOfficeResult"]["showRange"].stringValue, boxofficeType: json["boxOfficeResult"]["boxofficeType"].stringValue)
        return today
    }
}
