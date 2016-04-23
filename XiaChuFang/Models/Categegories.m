//
//  Categegories.m
//  XiaChuFang
//
//  Created by Mac on 16/4/11.
//  Copyright © 2016年 LiuKeZhi. All rights reserved.
//

#import "Categegories.h"

@implementation Categegories

-(id)initWithDic:(NSDictionary*)dic{
    self=[super init];
    if (self) {
        NSArray*arr=dic[@"content"];
        NSMutableArray*array=[NSMutableArray array];
        NSMutableArray*cateArr=[NSMutableArray array];
        for (NSDictionary*dic in arr) {
            self.name=dic[@"name"];
            NSLog(@"%@",self.name);
            [array addObject:self.name];
            CategegoriesName*categore=[[CategegoriesName alloc]initWithArr:dic[@"categories"]];
            [cateArr addObject:categore];
        }
        self.arr=array;
        self.cateArray=cateArr;
        
        
    }


    return self;
}

@end
@implementation CategegoriesName
-(id)initWithArr:(NSArray *)arr{
    self=[super init];
    if (self) {
        NSMutableArray*array=[NSMutableArray array];
        for (NSDictionary*dic in arr) {
            self.categoreName=dic[@"name"];
            [array addObject:self.categoreName];
        }
        self.arr=array;
        
        
    }


    return self;
}


@end
