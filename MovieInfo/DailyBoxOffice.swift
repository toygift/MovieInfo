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
class DailyBoxOffice: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
    var data: BoxOfficeResult!
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
        
        KobisAPI.shared.dayBoxOffice(type: "daily", date: yesterday, indicator: true) { (res) -> (Void) in
            if let json = res {
                self.data = KobisData.shared.dailyBoxOffice(response: json)
                self.dailyBoxOfficeList = self.data.dailyBoxOfficeList
                self.navigationItem.title = Date().subtract(1.days).format(with: "yyyy년MM월dd일", timeZone: TimeZone.current)
                print(self.data)
            }
        }
    }
}
extension DailyBoxOffice {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dailyBoxOfficeList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BoxOffice", for: indexPath) as? BoxOfficeTableViewCell
        cell?.setData(data: self.dailyBoxOfficeList[indexPath.row])
        return cell!
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 500
    }
}
