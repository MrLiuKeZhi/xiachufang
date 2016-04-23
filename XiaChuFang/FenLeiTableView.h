//
//  FenLeiTableView.h
//  XiaChuFang
//
//  Created by Mac on 16/4/11.
//  Copyright © 2016年 LiuKeZhi. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Categegories;
@interface FenLeiTableView : UIView<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,strong)Categegories*obj;
@end
