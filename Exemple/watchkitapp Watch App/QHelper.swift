//
//  QHelper.swift
//  Exemple-watchOS
//
//  Created by LESLIEHAN on 4/10/23.
//

import Foundation
import QWeather

struct QHelper {
    
    static func config() {
        guard let config = AllWeatherInquieirs.sharedInstance() else {
             return
        }
        // TODO: add your 'publicID' and 'appKey'
        // config.publicID = "xxx";
        // config.appKey   = "xxx";
        config.lang     = "zh"
        config.unit     = "m"
        config.appType  = .BIZ
    }
    
    
    static func WEATHER_NOW() {
        guard let config = AllWeatherInquieirs.sharedInstance() else {
             return
        }
        config.location = "101010100"
        config.date     = "2023-04-11 17:23"
        config.weather(withInquireType: .WEATHER_NOW) { result in
            if let result  = result as? WeatherBaseClass {
                print(result.debugDescription)
            }
        } faileureForError: { error in
            if let error {
                print(error.localizedDescription)
            }
        }
    }


    static func GEO_CITY_LOOKUP() {
        guard let config = AllWeatherInquieirs.sharedInstance() else {
             return
        }
        config.location = "Beijing"
        config.weather(withInquireType: .GEO_CITY_LOOKUP) { result in
            if let result  = result as? GeoBaseClass {
                print(result.debugDescription)
            }
        } faileureForError: { error in
            if let error {
                print(error.localizedDescription)
            }
        }
    }


    static func ASTRONOMY_SUN() {
        guard let config = AllWeatherInquieirs.sharedInstance() else {
             return
        }
        config.location = "101010100"
        config.date = "20230411"
        config.weather(withInquireType: .ASTRONOMY_SUN) { result in
            if let result  = result as? SunBaseModel {
                print(result.debugDescription)
            }
        } faileureForError: { error in
            if let error {
                print(error.localizedDescription)
            }
        }
    }

    
}
