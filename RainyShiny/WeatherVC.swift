//
//  WeatherVC.swift
//  RainyShiny
//
//  Created by Matthew Wood on 2016-11-02.
//  Copyright © 2016 Matthew Wood. All rights reserved.
//

import UIKit

class WeatherVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    // header IB Outlets
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var currentTempLabel: UILabel!
    @IBOutlet weak var currentCityLabel: UILabel!
    @IBOutlet weak var currentWeatherLabel: UILabel!
    @IBOutlet weak var currentWeatherImage: UIImageView!
    
    // tableView
    @IBOutlet weak var tableView: UITableView!
    
    // tableView IBOutlets
    @IBOutlet weak var tvDateLabel: UILabel!
    @IBOutlet weak var tvHighTemp: UILabel!
    @IBOutlet weak var tvWeather: UILabel!
    @IBOutlet weak var tvLowTemp: UILabel!
    @IBOutlet weak var tvImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    // Table View Delegate Functions
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell
    }
}

