//
//  KobisData.swift
//  MovieInfo
//
//  Created by Jaeseong on 2018. 5. 1..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import Foundation
import DateToolsSwift

let KOBIS_APIKEY = "6e1cdfab5749691be4c51818a1e59919"

struct BoxOffice_Daily: APIRequest {
    typealias T = BoxOfficeResult
    let domain = "https://www.kobis.or.kr"
    let api = "kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json"
    let router = "key=\(KOBIS_APIKEY)&targetDt=\(Date().subtract(1.days).format(with: "yyyyMMdd", timeZone: TimeZone.autoupdatingCurrent))"
}
struct BoxOffice_Weekly: APIRequest {
    typealias T = BoxOfficeResults
    let domain = "https://www.kobis.or.kr"
    let api = "kobisopenapi/webservice/rest/boxoffice/searchWeeklyBoxOfficeList.json"
    let router = "key=\(KOBIS_APIKEY)&targetDt=\(Date().subtract(7.days).format(with: "yyyyMMdd", timeZone: TimeZone.autoupdatingCurrent))&weekGb=\(0)"
}
struct BoxOffice_Weekend: APIRequest {
    typealias T = BoxOfficeResults
    let domain = "https://www.kobis.or.kr"
    let api = "kobisopenapi/webservice/rest/boxoffice/searchWeeklyBoxOfficeList.json"
    let router = "key=\(KOBIS_APIKEY)&targetDt=\(Date().subtract(7.days).format(with: "yyyyMMdd", timeZone: TimeZone.autoupdatingCurrent))&weekGb=\(1)"
}
struct BoxOffice_Weekday: APIRequest {
    typealias T = BoxOfficeResults
    let domain = "https://www.kobis.or.kr"
    let api = "kobisopenapi/webservice/rest/boxoffice/searchWeeklyBoxOfficeList.json"
    let router = "key=\(KOBIS_APIKEY)&targetDt=\(Date().subtract(7.days).format(with: "yyyyMMdd", timeZone: TimeZone.autoupdatingCurrent))&weekGb=\(2)"
}


//class KobisData: NSObject {
//    static let shared = KobisData()
//    
//    func dailyBoxOffice(response json: JSON) -> [BoxOfficeList] {
//        let day = json["boxOfficeResult"]["dailyBoxOfficeList"].arrayValue.map { (json) -> BoxOfficeList in
//            let daily = BoxOfficeList(opened: false,movieNm: json["movieNm"].stringValue, rankOldAndNew: json["rankOldAndNew"].stringValue, salesAmt: json["salesAmt"].stringValue, salesInten: json["salesInten"].stringValue, salesAcc: json["salesAcc"].stringValue, salesShare: json["salesShare"].stringValue, salesChange: json["salesChange"].stringValue, audiCnt: json["audiCnt"].stringValue, audiInten: json["audiInten"].stringValue, audiAcc: json["audiAcc"].stringValue, audiChange: json["audiChange"].stringValue, rnum: json["rnum"].stringValue, rank: json["rank"].stringValue, rankInten: json["rankInten"].stringValue, showCnt: json["showCnt"].stringValue, scrnCnt: json["scrnCnt"].stringValue, openDt: json["openDt"].stringValue, movieCd: json["movieCd"].stringValue)
//            return daily
//        }
//        return day
//    }
//    func weeklyBoxOffice(response json: JSON) -> [BoxOfficeList] {
//        let day = json["boxOfficeResult"]["weeklyBoxOfficeList"].arrayValue.map { (json) -> BoxOfficeList in
//            let daily = BoxOfficeList(opened: false,movieNm: json["movieNm"].stringValue, rankOldAndNew: json["rankOldAndNew"].stringValue, salesAmt: json["salesAmt"].stringValue, salesInten: json["salesInten"].stringValue, salesAcc: json["salesAcc"].stringValue, salesShare: json["salesShare"].stringValue, salesChange: json["salesChange"].stringValue, audiCnt: json["audiCnt"].stringValue, audiInten: json["audiInten"].stringValue, audiAcc: json["audiAcc"].stringValue, audiChange: json["audiChange"].stringValue, rnum: json["rnum"].stringValue, rank: json["rank"].stringValue, rankInten: json["rankInten"].stringValue, showCnt: json["showCnt"].stringValue, scrnCnt: json["scrnCnt"].stringValue, openDt: json["openDt"].stringValue, movieCd: json["movieCd"].stringValue)
//            return daily
//        }
//        return day
//    }
//}
//
////    func weeklyBoxOffice(response json: JSON) -> BoxOfficeResult {
////        let week = BoxOfficeResult(boxOfficeList: json["boxOfficeResult"]["weeklyBoxOfficeList"].arrayValue.map({ (json) -> BoxOfficeList in
////            let weekly = BoxOfficeList(movieNm: json["movieNm"].stringValue, rankOldAndNew: json["rankOldAndNew"].stringValue, salesAmt: json["salesAmt"].stringValue, salesInten: json["salesInten"].stringValue, salesAcc: json["salesAcc"].stringValue, salesShare: json["salesShare"].stringValue, salesChange: json["salesChange"].stringValue, audiCnt: json["audiCnt"].stringValue, audiInten: json["audiInten"].stringValue, audiAcc: json["audiAcc"].stringValue, audiChange: json["audiChange"].stringValue, rnum: json["rnum"].stringValue, rank: json["rank"].stringValue, rankInten: json["rankInten"].stringValue, showCnt: json["showCnt"].stringValue, scrnCnt: json["scrnCnt"].stringValue, openDt: json["openDt"].stringValue, movieCd: json["movieCd"].stringValue)
////            return weekly
////        }), showRange: json["boxOfficeResult"]["showRange"].stringValue, boxofficeType: json["boxOfficeResult"]["boxofficeType"].stringValue)
////        return week
////    }
////}
