//
//  TopViewModel.h
//  XiaChuFang
//
//  Created by Mac on 16/4/4.
//  Copyright © 2016年 LiuKeZhi. All rights reserved.
//

#import <Foundation/Foundation.h>
@class author;
@class ingredient;
@class instruction;
@interface TopViewModel : NSObject
-(id)initWithDic:(NSDictionary*)dic;
+(id)statuseWithDic:(NSDictionary*)dic;
@property(nonatomic,copy)NSString*photo;
@property(nonatomic,retain)author*authorDic;
@property(nonatomic,copy)NSString*tips;
@property(nonatomic,copy)NSString*desc;//第二界面描述
@property(nonatomic,retain)ingredient*ingredient;
@property(nonatomic,retain)instruction*instruction;
@property(nonatomic,retain)NSArray*instructionArray;
@property(nonatomic,retain)NSArray*ingerdientArray;
@end



@interface author : NSObject
@property(nonatomic,copy)NSString*YongHuName;
@property(nonatomic,copy)NSString*photo;
-(id)initWithDic:(NSDictionary*)dic;
@end





@interface ingredient : NSObject
@property(nonatomic,copy)NSString*amount;
@property(nonatomic,copy)NSString*buZhouName;
-(id)initWithArr:(NSArray*)arr;
@end

@interface instruction : NSObject
@property(nonatomic,copy)NSString*url;
@property(nonatomic,copy)NSString*text;
@property(nonatomic,copy)NSString*ident;
-(id)initWithArr:(NSArray*)arr;
@end
