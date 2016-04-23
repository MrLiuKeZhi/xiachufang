//
//  CustomScroll.h
//  XiaChuFang
//
//  Created by Mac on 16/4/5.
//  Copyright © 2016年 LiuKeZhi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Masonry.h"
@class TopViewModel;
@interface CustomScroll : UIView
{
    UIScrollView*TopScroll;


}
@property(nonatomic,retain)UIScrollView*scroll;
@property(nonatomic,retain)TopViewModel*model;
- (instancetype)initWithTopView:(NSArray*)arr;
@end
