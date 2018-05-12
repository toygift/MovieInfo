//
//  MovieInfo.swift
//  MovieInfo
//
//  Created by Jaeseong on 2018. 4. 21..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import Foundation

//struct MovieInfo {
//    let boxOfficeResult: BoxOfficeResult
//}

struct BoxOfficeResult {
    let boxOfficeList: [BoxOfficeList]
    let showRange, boxofficeType: String
}

struct BoxOfficeList {
    let movieNm: String
    let rankOldAndNew: String
    let salesAmt, salesInten, salesAcc, salesShare, salesChange: String
    let audiCnt, audiInten, audiAcc, audiChange: String
    let rnum, rank, rankInten: String
    let showCnt, scrnCnt, openDt, movieCd: String
}

