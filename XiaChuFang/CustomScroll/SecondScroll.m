//
//  SecondScroll.m
//  XiaChuFang
//
//  Created by Mac on 16/4/6.
//  Copyright © 2016年 LiuKeZhi. All rights reserved.
//

#define kwidth [UIScreen mainScreen].bounds.size.width
#import "UIButton+WebCache.h"
#import "SecondScroll.h"
#import "Masonry.h"
#import "CustomScroll.h"
#import "SecondScorllModel.h"
#import "UIImage+MultiFormat.h"
#define Kwidth [UIScreen mainScreen].bounds.size.width
static CGFloat btnWidth = 280;
static CGFloat btnHeight = 170;
@implementation SecondScroll
-(id)initWithModel:(SecondScorllModel*)model{
    self.model=model;
    self=[super init];
    if (self) {
        self.frame=CGRectMake(0, 284, kwidth, 170);
        UIScrollView*scroll=[[UIScrollView alloc]init];
       
        scroll.contentSize=CGSizeMake(Kwidth+220, 0);
        [self addSubview:scroll];
        _scroll=scroll;
    
        for (int i=0; i<4; i++) {
            UIView*view=[[UIView alloc]initWithFrame:CGRectMake(30+(20+btnWidth)*i, 0, btnWidth, btnHeight)];
            view.backgroundColor=[UIColor yellowColor];
            [scroll addSubview:view];
            UIButton*btn=[UIButton buttonWithType:UIButtonTypeCustom];
            btn.backgroundColor=[UIColor grayColor];
            btn.frame=CGRectMake(0, 0, btnWidth, btnHeight-40);
            [view addSubview:btn];
            UILabel*label=[[UILabel alloc]initWithFrame:CGRectMake(0,btnHeight-40 , btnWidth, 40)];
          //  label.backgroundColor=[UIColor redColor];
            [view addSubview:label];
            
            if (i==0) {
                label.text=@"登录后添加一些好友";
                label.textAlignment=NSTextAlignmentCenter;
                [btn setBackgroundImage:[UIImage imageNamed:@"1.jpg"] forState:UIControlStateNormal];
            
            }else{
                label.text=model.dateArr[i-1];
                label.textAlignment=NSTextAlignmentCenter;
            [btn setBackgroundImage:[self threeTotalImage:i-1] forState:UIControlStateNormal];
            
            
            }
            
            
            
            
            
        }
    }


    return self;
}
-(UIImage*)threeTotalImage:(NSInteger)index{
    UIImage      *resultImage;
    
    NSArray       *array =[self.model.totalPhotoArr[index]photoArray];
    NSInteger       count = array.count;
    for (NSInteger i=0; i<count; i++) {
        NSURL     *imageUrl = [NSURL URLWithString:array[i]];
        
        NSData     *data = [NSData dataWithContentsOfURL:imageUrl];
        UIImage*image=[UIImage sd_imageWithData:data];
        CGImageRef     imgRef = image.CGImage;
        CGFloat      width = CGImageGetWidth(imgRef);
        CGFloat      height = CGImageGetHeight(imgRef);
        if (i == 0) {
            UIGraphicsBeginImageContext(CGSizeMake(width, height));
            [image drawInRect:CGRectMake(0, 0, width/(count-1), height)];
        }else if (i == count-1){
            resultImage = UIGraphicsGetImageFromCurrentImageContext();
            UIGraphicsEndImageContext();
        }else {
            [image drawInRect:CGRectMake(i*width/(count-1), 0, width/(count-1), height)];
        }
    }
    return resultImage;


}
-(void)layoutSubviews{
[_scroll mas_makeConstraints:^(MASConstraintMaker *make) {
    make.top.equalTo(self).offset(10);
    make.left.equalTo(self).offset(0);
    make.right.equalTo(self).offset(0);
    make.height.mas_equalTo(170);
}];



}

@end
