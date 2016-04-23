//
//  CustomDetailView.h
//  XiaChuFang
//
//  Created by Mac on 16/4/11.
//  Copyright © 2016年 LiuKeZhi. All rights reserved.
//

#import <UIKit/UIKit.h>
@class CategegoriesName;
@interface CustomDetailView : UIView<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong)CategegoriesName*category;
-(id)initWithFrame:(CGRect)frame withCate:(CategegoriesName*)category;
@end
