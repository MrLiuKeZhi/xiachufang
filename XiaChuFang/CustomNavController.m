//
//  CustomNavController.m
//  XiaChuFang
//
//  Created by Mac on 16/4/11.
//  Copyright © 2016年 LiuKeZhi. All rights reserved.
//
#define kwidth [UIScreen mainScreen].bounds.size.width
#define khight [UIScreen mainScreen].bounds.size.height
#import "CustomNavController.h"
#import "FenLeiTableView.h"
@implementation CustomNavController
-(id)initWithFrame:(CGRect)frame{
    self=[super initWithFrame:frame];
    if (self) {
        UIButton*btn=[UIButton buttonWithType:UIButtonTypeCustom];
        [btn setBackgroundImage:[UIImage imageNamed:@"fenlei.png"] forState:UIControlStateNormal];
        btn.frame=CGRectMake(50, 20, 40, 40);
        [btn addTarget:self action:@selector(searchBtn:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:btn];
        UIButton*dengLuBtn=[UIButton buttonWithType:UIButtonTypeCustom];
        [dengLuBtn setBackgroundImage:[UIImage imageNamed:@"3.png"] forState:UIControlStateNormal];
        dengLuBtn.frame=CGRectMake(150, 20, 40, 40);
        [self addSubview:dengLuBtn];
        UISearchBar*bar=[[UISearchBar alloc]initWithFrame:CGRectMake(300, 20, 440, 40)];
        [self addSubview:bar];
        
        
    }
    
    
    return self;
}
-(void)searchBtn:(UIButton*)sender{
  
    UIView*view=[[UIView alloc]initWithFrame:CGRectMake(0, 0, kwidth, khight)];
    [self addSubview:view];
    FenLeiTableView*tableView=[[FenLeiTableView alloc]initWithFrame:CGRectMake(10, 80, 200, 400)];
    
    [view addSubview:tableView];
    [self.window addSubview:tableView];

}

@end
