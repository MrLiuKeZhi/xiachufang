//
//  SecondScroll.h
//  XiaChuFang
//
//  Created by Mac on 16/4/6.
//  Copyright © 2016年 LiuKeZhi. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SecondScorllModel;
@interface SecondScroll : UIView
{
    UIScrollView*_scroll;

}
@property(nonatomic,retain)SecondScorllModel*model;
-(id)initWithModel:(SecondScorllModel*)model;
@end
