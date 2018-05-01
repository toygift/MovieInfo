//
//  WeeklyBoxOffice.swift
//  MovieInfo
//
//  Created by Jaeseong on 2018. 5. 1..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import UIKit
import DateToolsSwift
import SwiftyJSON

class WeeklyBoxOffice: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var data: BoxOfficeResult!
    var weeklyBoxOfficeList: [DailyBoxOfficeList] = [] {
        didSet {
            self.tableView.delegate = self
            self.tableView.dataSource = self
            self.tableView.reloadData()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let today = Date().subtract(7.days).format(with: "yyyyMMdd", timeZone: TimeZone.current)
        KobisAPI.shared.dayBoxOffice(type: "weekly", date: today, indicator: true) { (res) -> (Void) in
            if let json = res {
                self.data = KobisData.shared.weeklyBoxOffice(response: json)
                self.weeklyBoxOfficeList = self.data.dailyBoxOfficeList
                self.navigationItem.title = self.data.showRange
            }
        }
    }
}

extension WeeklyBoxOffice {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.weeklyBoxOfficeList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BoxOffice", for: indexPath) as? BoxOfficeTableViewCell
        cell?.setData(data: self.weeklyBoxOfficeList[indexPath.row])
        return cell!
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 500
    }
}
