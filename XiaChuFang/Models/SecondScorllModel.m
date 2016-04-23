//
//  SecondScorllModel.m
//  XiaChuFang
//
//  Created by Mac on 16/4/9.
//  Copyright © 2016年 LiuKeZhi. All rights reserved.
//

#import "SecondScorllModel.h"

@implementation SecondScorllModel
-(id)initWithArr:(NSArray*)arr{
    self=[super init];
    if (self) {
        //[dic valueForKeyPath:@"dishes.dishes"]
        NSMutableArray*bigArr=[NSMutableArray array];
        NSMutableArray*nameArr=[NSMutableArray array];
        for (NSDictionary*dic in arr) {
            self.name=dic[@"name"];
            [nameArr addObject:self.name];
       self.dish=[[dishes alloc]initWithArr:[dic valueForKeyPath:@"dishes.dishes"]];
            [bigArr addObject:self.dish];
        }
        self.dateArr=nameArr;
        self.totalPhotoArr=bigArr;
        
    }



    return self;
}
@end
@implementation dishes

-(id)initWithArr:(NSArray*)arr{
    self=[super init];
    if (self) {
        NSMutableArray*photoArr=[NSMutableArray array];
        for (NSDictionary*dic in arr) {
            self.thumbnail=dic[@"thumbnail_280"];
            [photoArr addObject:self.thumbnail];
        }
        self.photoArray=photoArr;
    }


    return self;
}

@end