//
//  HttpManager.h
//  XiaChuFang
//
//  Created by Mac on 16/4/4.
//  Copyright © 2016年 LiuKeZhi. All rights reserved.
//

#import <Foundation/Foundation.h>
@class liuXingMenuModel;
@class SecondScorllModel;
@class Categegories;
@interface HttpManager : NSObject
//+(void)getRecipe_idSuccess:(void (^)(NSArray*arr))success;
+(void)getPhotoSuccess:(void(^)(NSArray*arr))block;
+(void)getSecondScroll:(void(^)(SecondScorllModel*model))block;
+(void)getrecipes:(NSDictionary*)dic success:(void(^)(NSArray*arr))block;
+(void)getPopularMenu:(NSDictionary*)dic :(void(^)(liuXingMenuModel*model))block;
+(void)getCategoreites:(void(^)(Categegories*model))block;
@end
