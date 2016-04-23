//
//  HomeViewController.m
//  XiaChuFang
//
//  Created by Mac on 16/4/5.
//  Copyright © 2016年 LiuKeZhi. All rights reserved.
//
#define KHeight [UIScreen mainScreen].bounds.size.height
#define Kwidth [UIScreen mainScreen].bounds.size.width
#define BJXXApiID    @"101773976,101773111,101773324,101773396,101773621"
#define BJXXApiSign @"9c6e2779af7693156eba85058f7571fa"
#define SYZJApiID     @"101754657,101767346,101765287,101756714,101768657"
#define SYZJApiSign  @"fc5477c88d4b7af9140c5145061b82ec"
#define XXCPApiID    @"100621836,100590848,100265012,100584131,100572700"
#define XXCPApiSign @"b40f265b56ed44d8edc1f7a46f2f1ac0"
#define RYDTApiID    @"100216308,100583807,1092490,108614,100511697"
#define RYDTApiSign @"af590362ade59c345894503f69e51840"
#import "HomeViewController.h"
#import "HttpManager.h"
#import "CustomScroll.h"
//#import "SignalView.h"
#import "SecondScroll.h"
#import "CustomLiuXingView.h"
#import "CustomerMenuView.h"
#import "TableViewcellModel.h"
#import "UIButton+WebCache.h"
#import "HttpManager.h"
#import "liuXingMenuModel.h"
#import "CustomNavController.h"
#import "SingClass.h"
@interface HomeViewController ()
{
    
    UIScrollView*scroll;
    UITableView*table;
    UILabel*label;
    UIButton*btn;
    UIView*customView;
    CustomLiuXingView*liuXingMenu;
}

@property(nonatomic,retain)TableViewcellModel*tabelModel;
@property(nonatomic,retain)NSArray*tableArr;
@property(nonatomic,retain)NSArray*dataArr;
@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    CustomNavController*nav=[[CustomNavController alloc]initWithFrame:CGRectMake(0, 0, Kwidth, 64)];
    [self.view addSubview:nav];
    
//顶部scroll
    [HttpManager getPhotoSuccess:^(NSArray *arr) {
//    NSLog(@"%lu",(unsigned long)arr.count);
    self.dataArr=arr;
    CustomScroll* CustomTopScroll=[[CustomScroll alloc]initWithTopView:self.dataArr];
    [scroll addSubview:CustomTopScroll];


    
}];
    [HttpManager getSecondScroll:^(SecondScorllModel *model) {
        SecondScroll*secVC=[[SecondScroll alloc]initWithModel:model];
        [scroll addSubview:secVC];
        

    }];
    
    dispatch_async(dispatch_get_main_queue(), ^{
        [self getPoplerdata];

    });
    
    
    
    
    //编辑选新
    NSDictionary*dict1=@{@"version":@"8",@"id":BJXXApiID,@"api_key":@"0d4ba9a3291bf5d8352ea68ca46fd760",@"mode":@"full",@"origin":@"ipad",@"api_sign":BJXXApiSign};
    //荣誉殿堂
    NSDictionary*dict3=@{@"version":@"8",@"id":RYDTApiID,@"api_key":@"0d4ba9a3291bf5d8352ea68ca46fd760",@"mode":@"full",@"origin":@"ipad",@"api_sign":RYDTApiSign};
    //新秀菜谱
    NSDictionary*dict2=@{@"version":@"8",@"id":XXCPApiID,@"api_key":@"0d4ba9a3291bf5d8352ea68ca46fd760",@"mode":@"full",@"origin":@"ipad",@"api_sign":XXCPApiSign};
    //三月最佳
    
     NSDictionary*dict4=@{@"version":@"8",@"id":SYZJApiID,@"mode":@"full",@"origin":@"ipad",@"api_sign":SYZJApiSign,@"api_key":@"0d4ba9a3291bf5d8352ea68ca46fd760"};
    
    [HttpManager getrecipes:dict1 success:^(NSArray *arr) {
        self.tableArr=arr;
        CustomerMenuView*view=[[CustomerMenuView alloc]initWithFrame:CGRectMake(0, 800, kwidth, 100) WithArr:self.tableArr];
        [self setLabel];
        label.text=@"编辑选新";
        [view addSubview:label];
        [self setBtn];
        
        [view addSubview:btn];

        [scroll addSubview:view];
        customView=view;
    }];
    [HttpManager getrecipes:dict2 success:^(NSArray *arr) {
        CustomerMenuView*view=[[CustomerMenuView alloc]initWithFrame:CGRectMake(0, 950, kwidth, 100) WithArr:arr];
        [self setLabel];
        label.text=@"新秀菜谱";
        [view addSubview:label];
        [self setBtn];
        
        [view addSubview:btn];
        [scroll addSubview:view];
        customView=view;
   }];
    [HttpManager getrecipes:dict3 success:^(NSArray *arr) {
        CustomerMenuView*view=[[CustomerMenuView alloc]initWithFrame:CGRectMake(0, 1100, kwidth, 100) WithArr:arr];
        [self setLabel];
        label.text=@"荣誉殿堂";
        [view addSubview:label];
        [self setBtn];
        
        [view addSubview:btn];
        [scroll addSubview:view];
        customView=view;
    }];
    [HttpManager getrecipes:dict4 success:^(NSArray *arr) {
        CustomerMenuView*view=[[CustomerMenuView alloc]initWithFrame:CGRectMake(0, 1250, kwidth, 100) WithArr:arr];
        [self setLabel];
        label.text=@"三月最佳";
        [view addSubview:label];

        [self setBtn];
        
        [view addSubview:btn];
        [scroll addSubview:view];
        customView=view;
    }];
   
    scroll=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 64, kwidth, KHeight)];
    //scroll.backgroundColor=[UIColor redColor];
    scroll.contentSize=CGSizeMake(0, KHeight*2);
    scroll.showsHorizontalScrollIndicator=YES;
    [self.view addSubview:scroll];
       //流行菜单
    
    
}
-(void)setLabel{
   label=[[UILabel alloc]initWithFrame:CGRectMake(30, -50, kwidth-300, 30)];
 
    label.font=[UIFont systemFontOfSize:15];
    

    
    
    
}
-(void)setBtn{
    btn=[UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame=CGRectMake(950, -50, 50, 50);
    [btn setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    
    [btn setTitle:@"全部" forState:UIControlStateNormal];
   
}
-(void)getPoplerdata{
    NSDictionary*dic1=@{@"recipe_list_id":@"164363",@"api_sign":@"341c38f23af9e62d5bcb43e360965b7b",@"api_key":@"0d4ba9a3291bf5d8352ea68ca46fd760",@"origin":@"ipad",@"version":@"8"};
    NSDictionary*dic2=@{@"recipe_list_id":@"102334120",@"api_sign":@"ffbdf70b98288b41eb73591b3f17deaa",@"api_key":@"0d4ba9a3291bf5d8352ea68ca46fd760",@"origin":@"ipad",@"version":@"8"};
    NSDictionary*dic3=@{@"recipe_list_id":@"101828645",@"api_sign":@"de76d3a0504792cae2311ca0ceb6ec27",@"api_key":@"0d4ba9a3291bf5d8352ea68ca46fd760",@"origin":@"ipad",@"version":@"8"};
    NSDictionary*dic4=@{@"recipe_list_id":@"101904834",@"api_sign":@"c28e96e47d30bd80096408ecadc996b9",@"api_key":@"0d4ba9a3291bf5d8352ea68ca46fd760",@"origin":@"ipad",@"version":@"8"};
    NSDictionary*dic5=@{@"recipe_list_id":@"101980361",@"api_sign":@"3e9517cd579ce3ff8c3ce5ed22f47378",@"api_key":@"0d4ba9a3291bf5d8352ea68ca46fd760",@"origin":@"ipad",@"version":@"8"};
        liuXingMenu=[[CustomLiuXingView alloc]init];
        [scroll addSubview:liuXingMenu];
        [HttpManager getPopularMenu:dic1 :^(liuXingMenuModel *model) {
            
           // CustomLiuXingView*liuXingMenu=[[CustomLiuXingView alloc]initWithModel:model];
//            liuXingMenu.obj1=model;
            [liuXingMenu receiveModel:model index:0];
            
            
            
        }];
        [HttpManager getPopularMenu:dic2 :^(liuXingMenuModel *model) {
            NSLog(@"model======%@",model);
           
//            liuXingMenu.obj2=model;
            [liuXingMenu receiveModel:model index:1];
            
            
        }];
        [HttpManager getPopularMenu:dic3 :^(liuXingMenuModel *model) {
            
//            liuXingMenu.obj3=model;
            [liuXingMenu receiveModel:model index:2];
          
            
            
        }];
        [HttpManager getPopularMenu:dic4 :^(liuXingMenuModel *model) {
            
//            liuXingMenu.obj4=model;
            [liuXingMenu receiveModel:model index:3];
        }];
        [HttpManager getPopularMenu:dic5 :^(liuXingMenuModel *model) {
            
//            liuXingMenu.obj5=model;
            [liuXingMenu receiveModel:model index:4];
            
        }];
 
       [HttpManager getCategoreites:^(Categegories *model) {
           [[SingClass shareSingClass]setCategoreModel:model];
    
       }];
    




}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
