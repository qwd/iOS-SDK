//
//  AppDelegate.m
//  Exemple
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
    [self WEATHER_NOW];
    [self GEO_CITY_LOOKUP];
    [self ASTRONOMY_SUN];
    [self HISTORICAL_WEATHER];
    return YES;
}


-(void)WEATHER_NOW{
    QWeatherConfigInstance.location = @"101010100";
    QWeatherConfigInstance.date     = @"2023-04-11 17:22";
    [QWeatherConfigInstance weatherWithInquireType:INQUIRE_TYPE_WEATHER_NOW WithSuccess:^(QWeatherBaseModel  *responseObject) {
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


- (void)ASTRONOMY_SUN {
    QWeatherConfigInstance.location = @"101010100";
    QWeatherConfigInstance.date = @"20230411";
    [QWeatherConfigInstance weatherWithInquireType:INQUIRE_TYPE_ASTRONOMY_SUN WithSuccess:^(QWeatherBaseModel  *responseObject) {
        NSLog(@"描述->%@",[responseObject description]);
    } faileureForError:^(NSError *error) {
        NSLog(@"error->%@",error);
    }];
}


- (void)HISTORICAL_WEATHER {
    QWeatherConfigInstance.location = @"101010100";
    QWeatherConfigInstance.date = @"20230410";
    [QWeatherConfigInstance weatherWithInquireType:INQUIRE_TYPE_HISTORICAL_WEATHER WithSuccess:^(QWeatherBaseModel  *responseObject) {
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
