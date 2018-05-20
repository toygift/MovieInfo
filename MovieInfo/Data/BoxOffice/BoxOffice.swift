//
//  MovieInfo.swift
//  MovieInfo
//
//  Created by Jaeseong on 2018. 4. 21..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import Foundation

struct BoxOfficeResult: Codable {
    let boxOfficeResult: DailyBoxOfficeList
    
    enum CodingKeys: String, CodingKey {
        case boxOfficeResult = "boxOfficeResult"
    }
}
struct DailyBoxOfficeList: Codable {
    let dailyBoxOfficeList: [BoxOffice]

    enum CodingKeys: String, CodingKey {
        case dailyBoxOfficeList = "dailyBoxOfficeList"
    }
}
struct BoxOffice: Codable {
    var opened: Bool = false
    let movieNm: String
    let rankOldAndNew: String
    let salesAmt, salesInten, salesAcc, salesShare, salesChange: String
    let audiCnt, audiInten, audiAcc, audiChange: String
    let rnum, rank, rankInten: String
    let showCnt, scrnCnt, openDt, movieCd: String
    
    enum CodingKeys: String, CodingKey {
//        case opened
        case movieNm = "movieNm"
        case rankOldAndNew = "rankOldAndNew"
        case salesAmt = "salesAmt"
        case salesInten = "salesInten"
        case salesAcc = "salesAcc"
        case salesShare = "salesShare"
        case salesChange = "salesChange"
        case audiCnt = "audiCnt"
        case audiInten = "audiInten"
        case audiAcc = "audiAcc"
        case audiChange = "audiChange"
        case rnum = "rnum"
        case rank = "rank"
        case rankInten = "rankInten"
        case showCnt = "showCnt"
        case scrnCnt = "scrnCnt"
        case openDt = "openDt"
        case movieCd = "movieCd"
    }
}

