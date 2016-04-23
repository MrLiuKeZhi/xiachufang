//
//  liuXingMenuModel.m
//  XiaChuFang
//
//  Created by Mac on 16/4/7.
//  Copyright © 2016年 LiuKeZhi. All rights reserved.
//

#import "liuXingMenuModel.h"

@implementation liuXingMenuModel
-(id)initWithDic:(NSDictionary*)dic{
    self=[super init];
    if (self) {
        self.firstName=dic[@"content"][0][@"first_recipe"][@"name"];
       
        NSArray*arr=dic[@"content"][0][@"sample_recipes"];
        
        NSMutableArray*array=[NSMutableArray array];
        NSMutableArray*autoArr=[NSMutableArray array];
        for (NSDictionary*dict in arr) {
            liuXingMenuModel   *model = [[liuXingMenuModel alloc]init];
            model.name=dict[@"name"];
            model.photo=dict[@"photo"];
            model.desc=dict[@"desc"];
           self.author=[[authorModel alloc]initWithDic:dict[@"author"]];
            [array addObject:model];
            [autoArr addObject:self.author];
          
       
        }
        self.dataArr=array;
        self.autoArr=autoArr;
       
           }


    return self;
}
@end
@implementation authorModel
- (instancetype)initWithDic:(NSDictionary*)dic{
    if (self) {
        self.name=dic[@"name"];
        self.photo=dic[@"photo"];
    }


    return self;
}

@end
@implementation liuXingLabel
- (instancetype)initWithDic:(NSDictionary*)dic{
    self=[super init];
    NSDictionary*aurhorDic=dic[@"content"][0];
    if (self) {
        self.name=aurhorDic[@"name"];
        self.is_expert=aurhorDic[@"is_expert"];
    }


    return self;
}


@end