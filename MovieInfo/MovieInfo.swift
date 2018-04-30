//
//  MovieInfo.swift
//  MovieInfo
//
//  Created by Jaeseong on 2018. 4. 21..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import Foundation

struct MovieInfo {
    let boxOfficeResult: BoxOfficeResult
}

struct BoxOfficeResult {
    let dailyBoxOfficeList: [DailyBoxOfficeList]
    let showRange, boxofficeType: String
}

struct DailyBoxOfficeList {
    let movieNm: String
    let rankOldAndNew: RankOldAndNew
    let salesAmt, rankInten, scrnCnt, openDt: String
    let audiCnt, audiInten, movieCD, audiChange: String
    let rnum, salesShare, audiAcc, salesChange: String
    let showCnt, rank, salesInten, salesAcc: String
}

enum RankOldAndNew {
    case old
}

