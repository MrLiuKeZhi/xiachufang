//
//  liuXingMenuModel.h
//  XiaChuFang
//
//  Created by Mac on 16/4/7.
//  Copyright © 2016年 LiuKeZhi. All rights reserved.
//

#import <Foundation/Foundation.h>
@class sample_recipes;
@class authorModel;
@class liuXingLabel;
@interface liuXingMenuModel : NSObject
@property(nonatomic,retain)NSString*firstName;
@property(retain,nonatomic)sample_recipes*sample_recipes;
@property(retain,nonatomic) NSMutableArray*dataArr;
@property(retain,nonatomic)NSMutableArray*autoArr;
@property(retain,nonatomic)authorModel*author;
@property(nonatomic,copy)NSString*name;
@property(nonatomic,copy)NSString*photo;
@property(nonatomic,copy)NSString*desc;
@property(nonatomic,retain)liuXingLabel*labelText;
-(id)initWithDic:(NSDictionary*)dic;

@end


@interface authorModel : NSObject
@property(nonatomic,copy)NSString*name;

@property(nonatomic,copy)NSString*photo;
- (instancetype)initWithDic:(NSDictionary*)dic;
@end
@interface liuXingLabel : NSObject
@property(nonatomic,copy)NSString*name;
@property(nonatomic,copy)NSString*is_expert;
- (instancetype)initWithDic:(NSDictionary*)dic;
@end