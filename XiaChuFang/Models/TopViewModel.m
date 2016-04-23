//
//  TopViewModel.m
//  XiaChuFang
//
//  Created by Mac on 16/4/4.
//  Copyright © 2016年 LiuKeZhi. All rights reserved.
//

#import "TopViewModel.h"


@implementation TopViewModel
-(id)initWithDic:(NSDictionary*)dic{
    if (self) {
//        NSLog(@"==>>>%@",dic);
            self.photo=dic[@"photo"];
            self.tips=dic[@"tips"];
        
          self.authorDic=[[author alloc]initWithDic:dic[@"author"]];
         NSMutableArray*ingredientArr=[NSMutableArray array];
        self.ingredient=[[ingredient alloc]initWithArr:dic[@"ingredient"]];
        [ingredientArr addObject:self.ingredient];
        NSMutableArray*instructionArr = [NSMutableArray array];
        self.instruction=[[instruction alloc]initWithArr:dic[@"instruction"]];
        [instructionArr addObject:self.instruction];
        self.ingerdientArray=ingredientArr;
        self.instructionArray=instructionArr;
    }


    return self;
}
+(id)statuseWithDic:(NSDictionary*)dic{
    return [[TopViewModel alloc]initWithDic:dic];


}

@end
@implementation author
-(id)initWithDic:(NSDictionary*)dic{
//     NSLog(@"==-->>>%@",dic);
    self=[super init];
    if (self) {
        self.YongHuName=dic[@"name"];
        self.photo=dic[@"photo"];
    }

    return self;
}


@end
@implementation ingredient
-(id)initWithArr:(NSArray*)arr{
//    NSLog(@">>>>>>>>%@",arr);
    self=[super init];
    if (self) {
       
        for (NSDictionary*dic in arr) {
            self.amount=dic[@"amount"];
            self.buZhouName=dic[@"name"];
           
            
        }
        
        
    }
    
    return self;
}



@end

@implementation instruction
-(id)initWithArr:(NSArray*)arr{
    self=[super init];
    if (self) {
        for (NSDictionary*dic in arr) {
            self.url=dic[@"url"];
            self.text=dic[@"text"];
            self.ident=dic[@"ident"];
        }
        
    }

    return self;

}


@end