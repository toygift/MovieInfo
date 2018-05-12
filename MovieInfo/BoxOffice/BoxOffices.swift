//
//  BoxOffice.swift
//  MovieInfo
//
//  Created by Jaeseong on 2018. 5. 1..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class BoxOffices: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var tableView: UITableView!
    var texts: String!
    var data: BoxOfficeResult!
    var boxOfficeList: [BoxOfficeList] = [] {
        didSet {
            self.tableView.delegate = self
            self.tableView.dataSource = self
            self.tableView.reloadData()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = UITableViewAutomaticDimension
    }
}

extension BoxOffices {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.boxOfficeList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BoxOffice", for: indexPath) as? BoxOfficeTableViewCell
        cell?.setData(data: self.boxOfficeList[indexPath.row])
        return cell!
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
}
