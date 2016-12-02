//
//  Constants.swift
//  RainyShiny
//
//  Created by Matthew Wood on 2016-11-28.
//  Copyright © 2016 Matthew Wood. All rights reserved.
//

import Foundation

// Weather API URL Components

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "408926e2feac8b4e3cbb727eca85671f"

let FORECAST_BASE_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?"
let COUNT = "&cnt=10"
let MODE = "&mode=json"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)\(Location.sharedInstance.latitude!)\(LONGITUDE)\(Location.sharedInstance.longitude!)\(APP_ID)\(API_KEY)"
let FORECAST_WEATHER_URL = "\(FORECAST_BASE_URL)\(LATITUDE)\(Location.sharedInstance.latitude!)\(LONGITUDE)\(Location.sharedInstance.longitude!)\(COUNT)\(MODE)\(APP_ID)\(API_KEY)"
