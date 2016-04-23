//
//  CustomerMenuView.h
//  XiaChuFang
//
//  Created by Mac on 16/4/7.
//  Copyright © 2016年 LiuKeZhi. All rights reserved.
//
#define kwidth [UIScreen mainScreen].bounds.size.width
#import <UIKit/UIKit.h>
@class TableViewcellModel;
@interface CustomerMenuView : UIView
@property(nonatomic,retain)TableViewcellModel*obj;

-(id)initWithFrame:(CGRect)frame WithArr:(NSArray *)arr;
@end
