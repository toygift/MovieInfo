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

    func dailyBoxOffice(response json: JSON) -> BoxOfficeResult {
        let day = BoxOfficeResult(dailyBoxOfficeList: json["boxOfficeResult"]["dailyBoxOfficeList"].arrayValue.map({ (json) -> DailyBoxOfficeList in
            let daily = DailyBoxOfficeList(movieNm: json["movieNm"].stringValue, rankOldAndNew: json["rankOldAndNew"].stringValue, salesAmt: json["salesAmt"].stringValue, salesInten: json["salesInten"].stringValue, salesAcc: json["salesAcc"].stringValue, salesShare: json["salesShare"].stringValue, salesChange: json["salesChange"].stringValue, audiCnt: json["audiCnt"].stringValue, audiInten: json["audiInten"].stringValue, audiAcc: json["audiAcc"].stringValue, audiChange: json["audiChange"].stringValue, rnum: json["rnum"].stringValue, rank: json["rank"].stringValue, rankInten: json["rankInten"].stringValue, showCnt: json["showCnt"].stringValue, scrnCnt: json["scrnCnt"].stringValue, openDt: json["openDt"].stringValue, movieCD: json["movieCD"].stringValue)
            return daily
        }), showRange: json["boxOfficeResult"]["showRange"].stringValue, boxofficeType: json["boxOfficeResult"]["boxofficeType"].stringValue)
        return day
    }
    func weeklyBoxOffice(response json: JSON) -> BoxOfficeResult {
        let week = BoxOfficeResult(dailyBoxOfficeList: json["boxOfficeResult"]["weeklyBoxOfficeList"].arrayValue.map({ (json) -> DailyBoxOfficeList in
            let weekly = DailyBoxOfficeList(movieNm: json["movieNm"].stringValue, rankOldAndNew: json["rankOldAndNew"].stringValue, salesAmt: json["salesAmt"].stringValue, salesInten: json["salesInten"].stringValue, salesAcc: json["salesAcc"].stringValue, salesShare: json["salesShare"].stringValue, salesChange: json["salesChange"].stringValue, audiCnt: json["audiCnt"].stringValue, audiInten: json["audiInten"].stringValue, audiAcc: json["audiAcc"].stringValue, audiChange: json["audiChange"].stringValue, rnum: json["rnum"].stringValue, rank: json["rank"].stringValue, rankInten: json["rankInten"].stringValue, showCnt: json["showCnt"].stringValue, scrnCnt: json["scrnCnt"].stringValue, openDt: json["openDt"].stringValue, movieCD: json["movieCD"].stringValue)
            return weekly
        }), showRange: json["boxOfficeResult"]["showRange"].stringValue, boxofficeType: json["boxOfficeResult"]["boxofficeType"].stringValue)
        return week
    }
}
