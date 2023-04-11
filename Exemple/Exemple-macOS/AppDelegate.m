//
//  AppDelegate.m
//  Exemple-macOS
//
//  Created by LESLIEHAN on 2022/11/22.
//

#import "AppDelegate.h"
#import <QWeather/QWeather.h>
@interface AppDelegate ()


@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
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


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
    return YES;
}


@end
