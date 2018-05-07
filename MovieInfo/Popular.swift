//
//  Popular.swift
//  MovieInfo
//
//  Created by Jaeseong on 2018. 5. 7..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class Popular: Movie, IndicatorInfoProvider {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = "https://api.themoviedb.org/3/movie/popular?api_key=\(TMDB_APIKEY)&language=ko-KR"
        TmdbAPI.shared.tmdb(url: url, indicator: true) { (res) -> (Void) in
            if let json = res {
                print(json)
                self.data = TmdbData.shared.movieTopRate(response: json)
                self.movieTopRateList = self.data.movieTopRateList
            }
        }   
    }
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "인기")
    }
}
