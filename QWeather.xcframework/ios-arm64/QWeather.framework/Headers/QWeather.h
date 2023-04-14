//
//  QWeather.h
//  QWeather
//
//  Created by 且随疾风前行 on 2018/5/28.
//  Copyright © 2018年 Song. All rights reserved.
//

#import <Foundation/Foundation.h>

//! Project version number for QWeather.
FOUNDATION_EXPORT double QWeatherVersionNumber;

//! Project version string for QWeather.
FOUNDATION_EXPORT const unsigned char QWeatherVersionString[];

//  #import "QWeather.h"


/* 当前版本 2023-04-14 4.13 */

/**
 * 写在前面的（废）话
 *
 * 此项目中用到了 Alamofire 进行网络请求
 *
 * 使用时请确保你的项目中有 Alamofire（5.6.4+）
 */
/**
 * sdk需要开启定位权限，请在工程plist.info文件中添加NSLocationWhenInUseUsageDescription
 */
/**
 * 使用时请仔细阅读相关文档 https://dev.qweather.com/docs/ios-sdk/
 *
 * 其他内容这里不做赘述，祝你写 BUG 愉快
 */

#import "AllWeatherInquieirs.h"
#import "DataBaseClasses.h"
