//
//  Categegories.h
//  XiaChuFang
//
//  Created by Mac on 16/4/11.
//  Copyright © 2016年 LiuKeZhi. All rights reserved.
//

#import <Foundation/Foundation.h>
@class CategegoriesName;
@interface Categegories : NSObject
@property(nonatomic,strong)NSString*name;

@property(nonatomic,strong)NSMutableArray*arr;
@property(nonatomic,strong)NSMutableArray*cateArray;
@property(nonatomic,strong)CategegoriesName*categore;
-(id)initWithDic:(NSDictionary*)dic;


@end
@interface CategegoriesName : NSObject
@property(nonatomic,strong)NSMutableArray*arr;
@property(nonatomic,strong)NSString*categoreName;
-(id)initWithArr:(NSArray*)arr;
@end