//
//  TopRateMovie.swift
//  MovieInfo
//
//  Created by toygift on 2018. 5. 4..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import UIKit
import SwiftyJSON
import XLPagerTabStrip

class TopRateMovie: Movie, IndicatorInfoProvider {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        TmdbAPI.shared.topRate(indicator: true) { (res) -> (Void) in
            if let json = res {
                self.data = TmdbData.shared.movieTopRate(response: json)
                self.movieTopRateList = self.data.movieTopRateList
            }
        }
    }
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "TOPRate")
    }
}
