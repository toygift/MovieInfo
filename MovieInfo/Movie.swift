//
//  Movie.swift
//  MovieInfo
//
//  Created by toygift on 2018. 5. 4..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import UIKit

class Movie: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView:UITableView!
    var data: MovieTopRateResult!
    var movieTopRateList: [MovieTopRateList] = [] {
        didSet {
            self.tableView.delegate = self
            self.tableView.dataSource = self
            self.tableView.reloadData()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

extension Movie {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.movieTopRateList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Movie", for: indexPath) as? MovieTableViewCell
        cell?.setData(data: self.movieTopRateList[indexPath.row])
        return cell!
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 500
    }
}
