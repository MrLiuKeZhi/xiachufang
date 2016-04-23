//
//  TableViewcellModel.m
//  XiaChuFang
//
//  Created by Mac on 16/4/7.
//  Copyright © 2016年 LiuKeZhi. All rights reserved.
//

#import "TableViewcellModel.h"

@implementation TableViewcellModel
-(id)initWithDic:(NSDictionary*)dic{
    self=[super init];
    if (self) {
        self.name=dic[@"name"];
        self.photo=dic[@"photo"];
        self.authorDuiXiang=[[authorObj alloc]initWithDic:dic[@"author"]];
        NSMutableArray*arr=[NSMutableArray array];
        self.instruDuiXiang=[[instructionObj alloc]initWithArr:dic[@"ingredient"]];
        [arr addObject:self.instruDuiXiang];
        self.instruArr=arr;
    }

    return self;

}
+(id)statuseWithDic:(NSDictionary*)dic{
    return [[TableViewcellModel alloc]initWithDic:dic];
    
    
}

@end
@implementation authorObj
-(id)initWithDic:(NSDictionary*)dic{
     self=[super init];
    if (self) {
        self.authorName=dic[@"name"];
        self.authorPhoto=dic[@"photo"];

    }
    

    return self;
}

@end
@implementation instructionObj
-(id)initWithArr:(NSArray *)arr{
     self=[super init];
    if (self) {
        for (NSDictionary*dic in arr) {
            self.text=dic[@"text"];
            self.url=dic[@"url"];
        }
        
              
    }


    return self;
}


@end



