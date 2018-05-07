//
//  NowPlayinf.swift
//  MovieInfo
//
//  Created by Jaeseong on 2018. 5. 7..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class NowPlaying: Movie, IndicatorInfoProvider {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = "https://api.themoviedb.org/3/movie/now_playing?api_key=\(TMDB_APIKEY)&language=ko-KR"
        TmdbAPI.shared.tmdb(url: url, indicator: true) { (res) -> (Void) in
            if let json = res {
                print(json)
                self.data = TmdbData.shared.movieTopRate(response: json)
                self.movieTopRateList = self.data.movieTopRateList
            }
        }
        // Do any additional setup after loading the view.
    }

    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "지금상영중")
    }

}
