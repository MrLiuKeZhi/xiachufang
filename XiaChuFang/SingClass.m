//
//  SingClass.m
//  XiaChuFang
//
//  Created by Mac on 16/4/11.
//  Copyright © 2016年 LiuKeZhi. All rights reserved.
//

#import "SingClass.h"
static SingClass*__single=nil;
@implementation SingClass
+(id)shareSingClass{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        __single=[[SingClass alloc]init];
    });
    
    return __single;
}
@end
