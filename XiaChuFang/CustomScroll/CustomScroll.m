//
//  CustomScroll.m
//  XiaChuFang
//
//  Created by Mac on 16/4/5.
//  Copyright © 2016年 LiuKeZhi. All rights reserved.
//
#define Kwidth [UIScreen mainScreen].bounds.size.width
#define KHeight [UIScreen mainScreen].bounds.size.height
#define Photoframe CGRectMake(0, 0, 310, 190)
#define headerPhoto CGRectMake(0, 0, 30, 30)
#define titleLabel CGRectMake(40, 0, 30, 30)
#import "CustomScroll.h"
#import "UIButton+WebCache.h"
#import "TopViewModel.h"
#import "UIImageView+WebCache.h"
@implementation CustomScroll
- (instancetype)initWithTopView:(NSArray*)arr{
    self=[super init];
    if (self) {
        TopScroll=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, Kwidth, 190)];
        TopScroll.backgroundColor=[UIColor yellowColor];
        TopScroll.contentSize=CGSizeMake(arr.count*310, 0);
        [self addSubview:TopScroll];
        self.backgroundColor = [UIColor redColor];
            self.frame = CGRectMake(0, 84, 1300, 190);
            for (int i=0; i<arr.count; i++) {
            self.model=arr[i];
            
            UIButton*btn=[UIButton buttonWithType:UIButtonTypeCustom];
            btn.frame=CGRectMake(310*i, 0, 310, 190);
                btn.backgroundColor= [UIColor blueColor];
            [btn sd_setImageWithURL:[NSURL URLWithString:self.model.photo] forState:UIControlStateNormal ];
           // [btn addTarget:self action:@selector(goToDetail) forControlEvents:UIControlEventTouchUpInside];
                [TopScroll addSubview:btn];
            UIImageView*imageView=[[UIImageView alloc]init];
            [imageView sd_setImageWithURL:[NSURL URLWithString:self.model.authorDic.photo]];
                imageView.frame=CGRectMake(310*i, 0, 30, 30 );
                [TopScroll addSubview:imageView];
            UILabel*label=[[UILabel alloc]init];
                label.frame=CGRectMake(310*i+40, 0, 200, 30);
                label.font=[UIFont systemFontOfSize:10];
            label.text=self.model.authorDic.YongHuName;
                [TopScroll addSubview:label];
                
            
        }
        
        
    }


    




    return self;
}
-(void)layoutSubviews{





}
@end
