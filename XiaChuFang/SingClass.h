//
//  SingClass.h
//  XiaChuFang
//
//  Created by Mac on 16/4/11.
//  Copyright © 2016年 LiuKeZhi. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Categegories;

@interface SingClass : NSObject
@property(nonatomic,retain)Categegories*categoreModel;
+(id)shareSingClass;
@end
