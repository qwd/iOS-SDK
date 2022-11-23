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
    // Insert code here to initialize your application
    
    QWeatherConfigInstance.publicID = @"HE2211231116281682"; // 替换你的publicID
    QWeatherConfigInstance.appKey = @"d9606ea5e31e4e7597d698c82f1890e9"; // 替换你的appKey
    QWeatherConfigInstance.appType = APP_TYPE_DEV;
    QWeatherConfigInstance.languageType = LANGUAGE_TYPE_ZH;
    QWeatherConfigInstance.unitType = UNIT_TYPE_M;
    QWeatherConfigInstance.date = @"20221123";
    [self getWeatherNow];
    
}

-(void)getWeatherNow{
    QWeatherConfigInstance.location = @"101010100";
    [QWeatherConfigInstance weatherWithInquireType:INQUIRE_TYPE_WEATHER_NOW WithSuccess:^(QWeatherBaseModel  *responseObject) {
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
