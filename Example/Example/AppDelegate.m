//
//  AppDelegate.m
//  Example
//
//  Created by LESLIEHAN on 2022/11/22.
//

#import "AppDelegate.h"
#import <QWeather/QWeather.h>
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // TODO: add your 'publicID' and 'appKey'
    QWeatherConfigInstance.publicID = @"xxx";
    QWeatherConfigInstance.appKey   = @"xxx";
    QWeatherConfigInstance.lang     = @"zh";
    QWeatherConfigInstance.unit     = @"m";
    QWeatherConfigInstance.appType  = APP_TYPE_BIZ;
    [self HISTORICAL_AIR];
    return YES;
}


-(void)WEATHER_3D{
    QWeatherConfigInstance.location = @"101010100";
    [QWeatherConfigInstance weatherWithInquireType:INQUIRE_TYPE_WEATHER_3D WithSuccess:^(QWeatherBaseModel  *responseObject) {
        NSLog(@"描述->%@",[responseObject description]);
    } faileureForError:^(NSError *error) {
        NSLog(@"error->%@",error);
    }];
}

-(void)WEATHER_24H{
    QWeatherConfigInstance.location = @"101010100";
    [QWeatherConfigInstance weatherWithInquireType:INQUIRE_TYPE_WEATHER_24H WithSuccess:^(QWeatherBaseModel  *responseObject) {
        NSLog(@"描述->%@",[responseObject description]);
    } faileureForError:^(NSError *error) {
        NSLog(@"error->%@",error);
    }];
}


-(void)WEATHER_MINUTELY{
    QWeatherConfigInstance.location = @"116.41,39.92";
    [QWeatherConfigInstance weatherWithInquireType:INQUIRE_TYPE_WEATHER_MINUTELY WithSuccess:^(QWeatherBaseModel  *responseObject) {
        NSLog(@"描述->%@",[responseObject description]);
    } faileureForError:^(NSError *error) {
        NSLog(@"error->%@",error);
    }];
}

- (void)WARNING{
    QWeatherConfigInstance.location = @"101010100";
    [QWeatherConfigInstance weatherWithInquireType:INQUIRE_TYPE_WARNING WithSuccess:^(QWeatherBaseModel  *responseObject) {
        NSLog(@"描述->%@",[responseObject description]);
    } faileureForError:^(NSError *error) {
        NSLog(@"error->%@",error);
    }];
}

- (void)WARNINGLIST{
    QWeatherConfigInstance.range = @"cn";
    [QWeatherConfigInstance weatherWithInquireType: INQUIRE_TYPE_WARNINGLIST WithSuccess:^(WarningListClass  *responseObject) {
        NSLog(@"描述->%@",[responseObject description]);
    } faileureForError:^(NSError *error) {
        NSLog(@"error->%@",error);
    }];
}

-(void)WEATHER_NOW{
    QWeatherConfigInstance.location = @"101010100";
    [QWeatherConfigInstance weatherWithInquireType:INQUIRE_TYPE_WEATHER_NOW WithSuccess:^(QWeatherBaseModel  *responseObject) {
        NSLog(@"描述->%@",[responseObject description]);
    } faileureForError:^(NSError *error) {
        NSLog(@"error->%@",error);
    }];
}

-(void)INDICES_1D{
    QWeatherConfigInstance.location = @"101010100";
    QWeatherConfigInstance.indices = @[@(INDICES_TYPE_all)];
    [QWeatherConfigInstance weatherWithInquireType:INQUIRE_TYPE_INDICES_1D WithSuccess:^(IndicesBaseClass  *responseObject) {
        NSLog(@"描述->%@",[responseObject description]);
    } faileureForError:^(NSError *error) {
        NSLog(@"error->%@",error);
        
    }];
}


-(void)WEATHER_AIR_NOW{
    QWeatherConfigInstance.location = @"101010100";
    [QWeatherConfigInstance weatherWithInquireType:INQUIRE_TYPE_WEATHER_AIR_NOW WithSuccess:^(AirBaseClass  *responseObject) {
        NSLog(@"描述->%@",[responseObject description]);
    } faileureForError:^(NSError *error) {
        NSLog(@"error->%@",error);
        
    }];
}

-(void)WEATHER_AIR_5D{
    QWeatherConfigInstance.location = @"101010100";
    [QWeatherConfigInstance weatherWithInquireType:INQUIRE_TYPE_WEATHER_AIR_5D WithSuccess:^(AirBaseClass  *responseObject) {
        NSLog(@"描述->%@",[responseObject description]);
    } faileureForError:^(NSError *error) {
        NSLog(@"error->%@",error);
        
    }];
}



- (void)GEO_CITY_LOOKUP {
    QWeatherConfigInstance.location = @"Beijing";
    [QWeatherConfigInstance weatherWithInquireType:INQUIRE_TYPE_GEO_CITY_LOOKUP WithSuccess:^(QWeatherBaseModel  *responseObject) {
        NSLog(@"描述->%@",[responseObject description]);
    } faileureForError:^(NSError *error) {
        NSLog(@"error->%@",error);
    }];
}

- (void)GEO_TOPCITY {
    // TODO: 示例代码 https://dev.qweather.com/docs/ios-sdk/geoapi/ios-top-city/
    QWeatherConfigInstance.number = @"10";
    QWeatherConfigInstance.range = @"cn"; // nil 表示全球范围
    [QWeatherConfigInstance weatherWithInquireType:INQUIRE_TYPE_GEO_TOPCITY WithSuccess:^(QWeatherBaseModel  *responseObject) {
        NSLog(@"描述->%@",[responseObject description]);
    } faileureForError:^(NSError *error) {
        NSLog(@"error->%@",error);
    }];
}

- (void)GEO_POI_LOOKUP {
    // TODO: 示例代码 https://dev.qweather.com/docs/ios-sdk/geoapi/ios-poi-lookup/
    // TODO: 需要根据文档更改注释
    QWeatherConfigInstance.type     = @"CSTA";
    QWeatherConfigInstance.location = @"Shanghai";
    [QWeatherConfigInstance weatherWithInquireType:INQUIRE_TYPE_GEO_POI_LOOKUP WithSuccess:^(QWeatherBaseModel  *responseObject) {
        NSLog(@"描述->%@",[responseObject description]);
    } faileureForError:^(NSError *error) {
        NSLog(@"error->%@",error);
    }];
}


- (void)GEO_POI_RANGE {
    QWeatherConfigInstance.location = @"116.41,39.92";
    [QWeatherConfigInstance weatherWithInquireType:INQUIRE_TYPE_GEO_POI_RANGE WithSuccess:^(QWeatherBaseModel  *responseObject) {
        NSLog(@"描述->%@",[responseObject description]);
    } faileureForError:^(NSError *error) {
        NSLog(@"error->%@",error);
    }];
}



- (void)ASTRONOMY_SUN {
    QWeatherConfigInstance.location = @"101010100";
    QWeatherConfigInstance.date = @"20230411";
    [QWeatherConfigInstance weatherWithInquireType:INQUIRE_TYPE_ASTRONOMY_SUN WithSuccess:^(QWeatherBaseModel  *responseObject) {
        NSLog(@"描述->%@",[responseObject description]);
    } faileureForError:^(NSError *error) {
        NSLog(@"error->%@",error);
    }];
}

- (void)ASTRONOMY_MOON {
    QWeatherConfigInstance.location = @"101010100";
    QWeatherConfigInstance.date = @"20230411";
    [QWeatherConfigInstance weatherWithInquireType: INQUIRE_TYPE_ASTRONOMY_MOON WithSuccess:^(MoonBaseModel  *responseObject) {
        NSLog(@"描述->%@",[responseObject description]);
    } faileureForError:^(NSError *error) {
        NSLog(@"error->%@",error);
    }];
}


- (void)ASTRONOMY_SUN_ANGLE {
    QWeatherConfigInstance.location = @"116.41,39.92";
    QWeatherConfigInstance.date = @"20220411";
    QWeatherConfigInstance.time = @"1230";
    QWeatherConfigInstance.tz = @"0800";
    QWeatherConfigInstance.alt = @"43";
    [QWeatherConfigInstance weatherWithInquireType: INQUIRE_TYPE_ASTRONOMY_SUN_ANGLE WithSuccess:^(SunAngleBaseModel  *responseObject) {
        NSLog(@"描述->%@",[responseObject description]);
    } faileureForError:^(NSError *error) {
        NSLog(@"error->%@",error);
    }];
}

- (void)HISTORICAL_WEATHER {
    // TODO: 文档缺少字段 https://dev.qweather.com/docs/ios-sdk/time-machine/ios-time-machine-weather/
    // daily.pressure、humidity
    QWeatherConfigInstance.location = @"101010100";
    QWeatherConfigInstance.date = @"20230410";
    [QWeatherConfigInstance weatherWithInquireType:INQUIRE_TYPE_HISTORICAL_WEATHER WithSuccess:^(WeatherHistoricalBaseClass  *responseObject) {
        NSLog(@"描述->%@",[responseObject description]);
    } faileureForError:^(NSError *error) {
        NSLog(@"error->%@",error);
    }];
}

-(void)HISTORICAL_AIR{
    QWeatherConfigInstance.location = @"101010100";
    QWeatherConfigInstance.date = @"20230410";
    [QWeatherConfigInstance weatherWithInquireType:INQUIRE_TYPE_HISTORICAL_AIR WithSuccess:^(WeatherHistoricalBaseClass  *responseObject) {
        NSLog(@"描述->%@",[responseObject description]);
    } faileureForError:^(NSError *error) {
        NSLog(@"error->%@",error);
    }];
}

-(void)STORM_LIST{
    QWeatherConfigInstance.basin = BASIN_TYPE_NP;
    QWeatherConfigInstance.year = @"2022";
    [QWeatherConfigInstance weatherWithInquireType:INQUIRE_TYPE_STORM_LIST WithSuccess:^(StormListBaseClass  *responseObject) {
        NSLog(@"描述->%@",[responseObject description]);
    } faileureForError:^(NSError *error) {
        NSLog(@"error->%@",error);
    }];
}

-(void)STORM_FORECAST{
    QWeatherConfigInstance.stormID = @"NP_2225";
   [QWeatherConfigInstance weatherWithInquireType: INQUIRE_TYPE_STORM_FORECAST WithSuccess:^(StormForecastBaseClass  *responseObject) {
       NSLog(@"描述->%@",[responseObject description]);
   } faileureForError:^(NSError *error) {
       NSLog(@"error->%@",error);
   }];
}

-(void)STORM_TRACK{
    QWeatherConfigInstance.stormID = @"NP_2225";
    [QWeatherConfigInstance weatherWithInquireType: INQUIRE_TYPE_STORM_TRACK WithSuccess:^(StormNowTrackBaseClass  *responseObject) {
        NSLog(@"描述->%@",[responseObject description]);
    } faileureForError:^(NSError *error) {
        NSLog(@"error->%@",error);
    }];
}

-(void)OCEAN_CURRENTS{
    QWeatherConfigInstance.location = @"P66981";
    QWeatherConfigInstance.date = @"20230411";
    [QWeatherConfigInstance weatherWithInquireType: INQUIRE_TYPE_OCEAN_CURRENTS WithSuccess:^(OceanCurrentsBaseClass  *responseObject) {
        NSLog(@"描述->%@",[responseObject description]);
    } faileureForError:^(NSError *error) {
        NSLog(@"error->%@",error);
    }];
}

-(void)OCEAN_TIDE{
    QWeatherConfigInstance.location = @"P66981";
    QWeatherConfigInstance.date = @"20230411";
    [QWeatherConfigInstance weatherWithInquireType: INQUIRE_TYPE_OCEAN_TIDE WithSuccess:^(OceanTideBaseClass  *responseObject) {
        NSLog(@"描述->%@",[responseObject description]);
    } faileureForError:^(NSError *error) {
        NSLog(@"error->%@",error);
    }];
}

#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
