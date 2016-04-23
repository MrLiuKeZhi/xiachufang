//
//  SignalScroll.m
//  XiaChuFang
//
//  Created by Mac on 16/4/6.
//  Copyright © 2016年 LiuKeZhi. All rights reserved.
//

#import "SignalScroll.h"

@implementation SignalScroll
+ (SignalScroll *)sharedClient{
    static SignalScroll*_signscrollView=nil;
    static  dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _signscrollView = [[SignalScroll alloc] init];
    });
    return _signscrollView;
}



@end
