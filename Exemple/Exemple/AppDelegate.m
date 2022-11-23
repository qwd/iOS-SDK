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
    // Override point for customization after application launch.
    QWeatherConfigInstance.publicID = @"HE2211231116281682"; // 替换你的publicID
    QWeatherConfigInstance.appKey = @"d9606ea5e31e4e7597d698c82f1890e9"; // 替换你的appKey
    QWeatherConfigInstance.appType = APP_TYPE_DEV;
    QWeatherConfigInstance.languageType = LANGUAGE_TYPE_ZH;
    QWeatherConfigInstance.unitType = UNIT_TYPE_M;
    QWeatherConfigInstance.date = @"20221123";
    [self getWeatherNow];
    return YES;
}


-(void)getWeatherNow{
    QWeatherConfigInstance.location = @"101010100";
    [QWeatherConfigInstance weatherWithInquireType:INQUIRE_TYPE_WEATHER_NOW WithSuccess:^(QWeatherBaseModel  *responseObject) {
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
