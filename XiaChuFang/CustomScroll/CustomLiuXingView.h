//
//  CustomLiuXingView.h
//  XiaChuFang
//
//  Created by Mac on 16/4/6.
//  Copyright © 2016年 LiuKeZhi. All rights reserved.
//

#import <UIKit/UIKit.h>
static CGFloat btnWidth =178 ;
static CGFloat btnHeight = 160;
@class liuXingMenuModel;
#define kwidth [UIScreen mainScreen].bounds.size.width

@interface CustomLiuXingView : UIView
{
    UIButton*btn;
    UILabel*label;

}

-(id)init;
- (void)receiveModel:(liuXingMenuModel *)model index:(NSInteger) index;
@end
