//
//  CustomerMenuView.m
//  XiaChuFang
//
//  Created by Mac on 16/4/7.
//  Copyright © 2016年 LiuKeZhi. All rights reserved.
//

#import "CustomerMenuView.h"
#import "UIButton+WebCache.h"
#import "TableViewcellModel.h"
#import "UIImageView+WebCache.h"
static CGFloat btnWidth =178 ;
static CGFloat btnHeight = 90;

@implementation CustomerMenuView
-(id)initWithFrame:(CGRect)frame WithArr:(NSArray *)arr{
    self=[super initWithFrame:frame];
    if (self) {
        //self.frame=CGRectMake(frame.origin.x, frame.origin.y, frame.size.width, frame.size.height);
        
        
        for (int i=0; i<arr.count; i++) {
            self.obj=arr[i];
           // NSLog(@"%@",self.obj);
            
            UIButton*btn=[UIButton buttonWithType:UIButtonTypeCustom];
            btn.frame=CGRectMake(30+(20+btnWidth)*i, 0, btnWidth, btnHeight);
            [btn sd_setBackgroundImageWithURL:[NSURL URLWithString:self.obj.photo] forState:UIControlStateNormal];
           // NSLog(@"%@",self.obj.photo);
            btn.backgroundColor=[UIColor blueColor];
            [self addSubview:btn];
            UILabel*label=[UILabel new];
            label.font=[UIFont systemFontOfSize:10];
            label.frame=CGRectMake(30+(20+btnWidth)*i, 93,150, 6 );
            label.text=self.obj.name;
            [self addSubview:label];
            UIImageView *image=[[UIImageView alloc]initWithFrame:CGRectMake(30+(20+btnWidth)*i,-10 , 20, 20)];
            [image sd_setImageWithURL:[NSURL URLWithString:self.obj.authorDuiXiang.authorPhoto]];
            image.layer.cornerRadius=10;
            [self addSubview:image];
            UILabel*titleLabel=[[UILabel alloc]initWithFrame:CGRectMake(80+(20+btnWidth)*i, -10, 100, 6)];
            titleLabel.font=[UIFont systemFontOfSize:10];
            titleLabel.text=self.obj.authorDuiXiang.authorName;
            [self addSubview:titleLabel];
        }
        
        
        
        
    }
    
    
    
    return self;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
