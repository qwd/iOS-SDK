//
//  AirqualityBaseClass.h
//  QWeather
//
//  Created by LESLIEHAN on 2024/12/6.
//  Copyright © 2024 QWeather. All rights reserved.
//

#import <QWeather/QWeather.h>

NS_ASSUME_NONNULL_BEGIN

@class AirqualityNowBaseClass,AirqualityMetadata,AirqualityIndex,AirqualityColor,AirqualityPollutantInfo,AirqualityHealthInfo,AirqualityAdvice,AirqualityPollutant,AirqualityConcentration,AirqualitySubIndex,AirqualityStation,AirqualityStationBaseClass,AirqualityStationPollutant,AirqualityStationMetadata,AirqualityHourBaseClass,AirqualityHour,AirqualityDailyBaseClass,AirqualityDaily;

@interface AirqualityNowBaseClass : QWeatherBaseModel
@property (nonatomic, copy) AirqualityMetadata *metadata;
@property (nonatomic, strong) NSArray<AirqualityIndex *> *indexes;
@property (nonatomic, strong) NSArray<AirqualityPollutant *> *pollutants;
@property (nonatomic, strong) NSArray<AirqualityStation *> *stations;
@end

@interface AirqualityMetadata : QWeatherBaseModel
@property (nonatomic, copy) NSString *tag;
@end

@interface AirqualityIndex : QWeatherBaseModel
@property (nonatomic, copy) NSString *code;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) double aqi;
@property (nonatomic, copy) NSString *aqiDisplay;
@property (nonatomic, copy) NSString *level;
@property (nonatomic, copy) NSString *category;
@property (nonatomic, strong) AirqualityColor *color;
@property (nonatomic, strong) AirqualityPollutantInfo *primaryPollutant;
@property (nonatomic, strong) AirqualityHealthInfo *health;
@end

@interface AirqualityColor : QWeatherBaseModel
@property (nonatomic, assign) NSInteger red;
@property (nonatomic, assign) NSInteger green;
@property (nonatomic, assign) NSInteger blue;
@property (nonatomic, assign) double alpha;
@end

@interface AirqualityPollutantInfo : QWeatherBaseModel
@property (nonatomic, copy) NSString *code;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *fullName;
@end

@interface AirqualityHealthInfo : QWeatherBaseModel
@property (nonatomic, copy) NSString *effect;
@property (nonatomic, strong) AirqualityAdvice *advice;
@end

@interface AirqualityAdvice : QWeatherBaseModel
@property (nonatomic, copy) NSString *generalPopulation;
@property (nonatomic, copy) NSString *sensitivePopulation;
@end

@interface AirqualityPollutant : QWeatherBaseModel
@property (nonatomic, copy) NSString *code;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *fullName;
@property (nonatomic, strong) AirqualityConcentration *concentration;
@property (nonatomic, strong) NSArray<AirqualitySubIndex *> *subIndexes;
@end

@interface AirqualityConcentration : QWeatherBaseModel
@property (nonatomic, assign) double value;
@property (nonatomic, copy) NSString *unit;
@end

@interface AirqualitySubIndex : QWeatherBaseModel
@property (nonatomic, copy) NSString *code;
@property (nonatomic, assign) double aqi;
@property (nonatomic, copy) NSString *aqiDisplay;
@end

@interface AirqualityStation : QWeatherBaseModel
@property (nonatomic, copy) NSString *stationId;
@property (nonatomic, copy) NSString *name;
@end

@interface AirqualityStationBaseClass : QWeatherBaseModel
@property (nonatomic, strong) AirqualityStationMetadata *metadata;
@property (nonatomic, strong) NSArray<AirqualityStationPollutant *> *pollutants;
@end

@interface AirqualityStationPollutant : QWeatherBaseModel
@property (nonatomic, copy) NSString *code;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *fullName;
@property (nonatomic, strong) AirqualityConcentration *concentration;
@end

@interface AirqualityStationMetadata : QWeatherBaseModel
@property (nonatomic, copy) NSString *tag;
@property (nonatomic, strong) NSArray<NSString *> *sources;
@end

@interface AirqualityHourBaseClass : QWeatherBaseModel
@property (nonatomic, strong) AirqualityMetadata *metadata;
@property (nonatomic, strong) NSArray<AirqualityHour *> *hours;
@end

@interface AirqualityHour : QWeatherBaseModel
@property (nonatomic, copy) NSString *forecastTime;
@property (nonatomic, strong) NSArray<AirqualityIndex *> *indexes;
@property (nonatomic, strong) NSArray<AirqualityPollutant *> *pollutants;
@end

@interface AirqualityDailyBaseClass : QWeatherBaseModel
@property (nonatomic, strong) AirqualityMetadata *metadata;
@property (nonatomic, strong) NSArray<AirqualityDaily *> *days;
@end

@interface AirqualityDaily : QWeatherBaseModel
@property (nonatomic, copy) NSString *forecastStartTime;
@property (nonatomic, copy) NSString *forecastEndTime;
@property (nonatomic, strong) NSArray<AirqualityIndex *> *indexes;
@property (nonatomic, strong) NSArray<AirqualityPollutant *> *pollutants;
@end

NS_ASSUME_NONNULL_END
