//
//  CustomLiuXingView.m
//  XiaChuFang
//
//  Created by Mac on 16/4/6.
//  Copyright © 2016年 LiuKeZhi. All rights reserved.
//

#import "CustomLiuXingView.h"
#import "UIButton+WebCache.h"
#import "liuXingMenuModel.h"
@implementation CustomLiuXingView
-(id)init{
    self=[super init];
    if (self) {
       
        UILabel*titleLabel=[[UILabel alloc]init];
        titleLabel.text=@"流行菜单";
        titleLabel.frame=CGRectMake(30, -30, 100, 30);
        [self addSubview:titleLabel];
        self.frame=CGRectMake(0, 504, kwidth, 260);
        for (int i=0; i<5; i++) {
            
            UIView*bgview=[UIView new];
            bgview.backgroundColor=[UIColor redColor];
            bgview.frame=CGRectMake(30+(20+btnWidth)*i, 0, btnWidth, btnHeight);
            [self addSubview:bgview];
            
            label=[[UILabel alloc]initWithFrame:CGRectMake(0, 0, btnWidth, 100)];
            label.backgroundColor=[UIColor yellowColor];
            label.tag=i+1000;
            label.textAlignment=NSTextAlignmentCenter;
            //label.text=self.obj.name;
            [bgview addSubview:label];
            btn=[UIButton buttonWithType:UIButtonTypeCustom];
            btn.frame=CGRectMake(0, 100, btnWidth, btnHeight);
            btn.backgroundColor=[UIColor greenColor];
            btn.tag=i+100;
            [btn addTarget:self action:@selector(detailNext:) forControlEvents:UIControlEventTouchUpInside];
            [bgview addSubview:btn];
            
           
     
            
            
        }
       
        
    
    
    
    }



    return self;
}
- (void)receiveModel:(liuXingMenuModel *)model index:(NSInteger) i {
    UIButton  *button = [self viewWithTag:i+100];
    UILabel*lable=[self viewWithTag:i+1000];
    if (i==0) {

        
        
            [button sd_setBackgroundImageWithURL:[NSURL URLWithString:[model.dataArr[0]photo]] forState:UIControlStateNormal];
        lable.text=model.firstName;
     
        
    }else if(i==1){
        [button sd_setBackgroundImageWithURL:[NSURL URLWithString:[model.dataArr[0]photo]] forState:UIControlStateNormal];
        NSLog(@"===========********   %@",[model.dataArr[0]photo]);
       lable.text=model.firstName;
        
        
    }else if (i==2){
        [button sd_setBackgroundImageWithURL:[NSURL URLWithString:[model.dataArr[0]photo]] forState:UIControlStateNormal];
        lable.text=model.firstName;
        
        
    }else if (i==3){
        [button sd_setBackgroundImageWithURL:[NSURL URLWithString:[model.dataArr[0]photo]] forState:UIControlStateNormal];
        lable.text=model.firstName;
        
        
        
    }else{
        [button sd_setBackgroundImageWithURL:[NSURL URLWithString:[model.dataArr[0]photo]] forState:UIControlStateNormal];
        
        lable.text=model.firstName;
       
    }
    
    
    
    
    
}
-(void)detailNext:(UIButton*)btn{





}









@end
