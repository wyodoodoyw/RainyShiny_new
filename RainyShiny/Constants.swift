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

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)35\(LONGITUDE)139\(APP_ID)\(API_KEY)"
