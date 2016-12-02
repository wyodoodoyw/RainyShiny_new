//
//  WeatherVC.swift
//  RainyShiny
//
//  Created by Matthew Wood on 2016-11-02.
//  Copyright © 2016 Matthew Wood. All rights reserved.
//

import UIKit
import Alamofire

class WeatherVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    // header IB Outlets
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var currentTempLabel: UILabel!
    @IBOutlet weak var currentCityLabel: UILabel!
    @IBOutlet weak var currentWeatherLabel: UILabel!
    @IBOutlet weak var currentWeatherImage: UIImageView!
    
    // tableView
    @IBOutlet weak var tableView: UITableView!
    
    var currentWeather: CurrentWeather!
    var forecast: Forecast!
    var forecasts = [Forecast]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        // instantiate currentWeather and forecast
        currentWeather = CurrentWeather()
        
        currentWeather.downloadWeatherDetails {
            // Setup UI to load downloaded data
            self.downloadForecastData() {
                self.updateMainUI()
            }
        }
    }
    
    // Forecast Data Functions
    
    func downloadForecastData(completed: @escaping DownloadComplete) {
        // download forecast weather data for TableView
        
        let forecastURL = URL(string: FORECAST_WEATHER_URL)!
        Alamofire.request(forecastURL).responseJSON { response in
            let result = response.result
            // print(response)
            
            if let dict = result.value as? Dictionary<String, AnyObject> {
                if let list = dict["list"] as? [Dictionary<String, AnyObject>] {
                    
                    for obj in list {
                        let forecast = Forecast(weatherDict: obj)
                        self.forecasts.append(forecast)
                    }
                    self.tableView.reloadData()
                }
            }
        }
        completed()
    }
    
    // Table View Delegate Functions
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return forecasts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "weatherCell", for: indexPath) as? WeatherCell {
            let forecast = forecasts[indexPath.row]
            cell.configureCell(forecast: forecast)
            return cell
        } else {
            // return empty WeatherCell just in case
            return WeatherCell()
        }
    }
    
    // Update UI Function
    
    func updateMainUI() {
        dateLabel.text = currentWeather.date
        currentTempLabel.text = "\(currentWeather.currentTemp)"
        currentWeatherLabel.text = currentWeather.weatherType
        currentCityLabel.text = currentWeather.cityName
        currentWeatherImage.image = UIImage(named: currentWeather.weatherType)
    }
}

