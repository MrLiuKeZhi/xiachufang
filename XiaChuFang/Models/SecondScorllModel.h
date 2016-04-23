//
//  SecondScorllModel.h
//  XiaChuFang
//
//  Created by Mac on 16/4/9.
//  Copyright © 2016年 LiuKeZhi. All rights reserved.
//

#import <Foundation/Foundation.h>
@class dishes;
@interface SecondScorllModel : NSObject
@property(nonatomic,retain)NSArray*totalPhotoArr;
@property(nonatomic,retain)NSArray*dateArr;
@property(nonatomic,retain)dishes*dish;
@property(nonatomic,copy)NSString*name;
-(id)initWithArr:(NSArray*)arr;
@end
@interface dishes : NSObject

@property(nonatomic,copy)NSString*thumbnail;
@property(nonatomic,retain)NSArray*photoArray;
-(id)initWithArr:(NSArray*)arr;
@end