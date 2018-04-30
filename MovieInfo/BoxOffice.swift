//
//  ViewController.swift
//  MovieInfo
//
//  Created by Jaeseong on 2018. 4. 21..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
import DateToolsSwift
import MKProgress

class BoxOffice: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
    
    var dailyBoxOfficeList: [DailyBoxOfficeList] = [] {
        didSet {
            self.tableView.delegate = self
            self.tableView.dataSource = self
            self.tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MKProgress.config.activityIndicatorColor = .darkGray
        MKProgress.config.hudColor = .clear
        let yesterday = Date().subtract(1.days).format(with: "yyyyMMdd", timeZone: TimeZone.current)
        
        KobisAPI.shared.dayBoxOffice(date: yesterday, indicator: true) { (res) -> (Void) in
            if let json = res {
                let data = KobisData.shared.todayBoxOffice(response: json)
                
                self.dailyBoxOfficeList = data.dailyBoxOfficeList
                print(self.dailyBoxOfficeList)
                print(data.dailyBoxOfficeList.count)
            }
        }
    }
    
    // TODO: 데일리, 위클리

    
}
extension BoxOffice {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dailyBoxOfficeList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BoxOffice", for: indexPath) as? BoxOfficeTableViewCell
        cell?.setData(data: self.dailyBoxOfficeList[indexPath.row])
        return cell!
    }
}
