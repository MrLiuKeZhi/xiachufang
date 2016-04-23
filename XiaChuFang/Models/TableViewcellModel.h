//
//  TableViewcellModel.h
//  XiaChuFang
//
//  Created by Mac on 16/4/7.
//  Copyright © 2016年 LiuKeZhi. All rights reserved.
//

#import <Foundation/Foundation.h>
@class authorObj;
@class ingredientObj;
@class instructionObj;
@interface TableViewcellModel : NSObject
@property(nonatomic,copy)NSString*name;
@property(nonatomic,copy)NSString*photo;
@property(nonatomic,strong)authorObj*authorDuiXiang;
@property(nonatomic,strong)instructionObj*instruDuiXiang;
@property(nonatomic,retain)NSArray*instruArr;//步骤数组

-(id)initWithDic:(NSDictionary*)dic;
+(id)statuseWithDic:(NSDictionary*)dic;
@end
@interface authorObj : NSObject
@property(nonatomic,copy)NSString*authorName;
@property(nonatomic,copy)NSString*authorPhoto;
-(id)initWithDic:(NSDictionary*)dic;

@end
@interface ingredientObj : NSObject
@property(nonatomic,copy)NSString*name;
@property(nonatomic,copy)NSString*amount;
-(id)initWithDic:(NSDictionary*)dic;

@end
@interface instructionObj : NSObject
@property(nonatomic,copy)NSString*text;
@property(nonatomic,copy)NSString*url;
-(id)initWithArr:(NSArray*)arr;
@end
