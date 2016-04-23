//
//  HttpManager.m
//  XiaChuFang
//
//  Created by Mac on 16/4/4.
//  Copyright © 2016年 LiuKeZhi. All rights reserved.
//

#import "HttpManager.h"
#import "AFNetworking.h"
#import "TopViewModel.h"
#import "TableViewcellModel.h"
#import "liuXingMenuModel.h"
#import "SecondScorllModel.h"
#import "Categegories.h"
@implementation HttpManager
//+(void)getRecipe_idSuccess:(void (^)(NSArray*arr))success{
//    AFHTTPSessionManager *manager=[AFHTTPSessionManager manager];
//    [manager GET:@"http://api.xiachufang.com/v2/recipes/popular.json?api_key=0d4ba9a3291bf5d8352ea68ca46fd760&api_sign=d5f1590697b035bba91df20d074c1ffe&limit=20&offset=0&origin=ipad&version=8" parameters:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
//      //  NSLog(@"+++++++   %@",responseObject);
//        
//    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
//        
//    }];
//}
+(void)getPhotoSuccess:(void(^)(NSArray*arr))block{
    AFHTTPSessionManager * manager=[AFHTTPSessionManager manager];
    NSDictionary*postDic=@{@"id":@"100466460,101774692,101773422,100489130,100302685,101774593,101774284,100578409,101770952,1039614,101775043,101774742,101775311,1088192,101766242,100126381,101775497,101773811,101690906,101774494",@"api_sign":@"499f5179d3ca0f1eea9888bceb3c655c",@"api_key":@"0d4ba9a3291bf5d8352ea68ca46fd760",@"mode":@"full",@"origin":@"ipad",@"version":@"8"};
    [manager POST:@"http://api.xiachufang.com/v2/recipes/lookup.json" parameters:postDic progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        //NSLog(@"+++++   %@",responseObject);
        NSArray*arr=[responseObject valueForKeyPath:@"content.recipes"];
      //  NSLog(@",,,,,,,,,,%@",arr);
        NSMutableArray*array=[NSMutableArray array];
        for (NSDictionary*dic in arr) {
            TopViewModel*model=[TopViewModel statuseWithDic:dic];
            [array addObject:model];
           // NSLog(@"%@",array);
        }
        if (block) {
            block(array);
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"______  %@",error);
    }];
    
}
+(void)getSecondScroll:(void(^)(SecondScorllModel*model))block{
    
    AFHTTPSessionManager*manager=[AFHTTPSessionManager manager];
      [manager GET:@"http://api.xiachufang.com/v2/init_page_pad_v1.json?api_key=0d4ba9a3291bf5d8352ea68ca46fd760&api_sign=eafe23e06794777015885947820249a0&n_recipe_lists=5&origin=ipad&version=8" parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {
          
      } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
         // NSLog(@"%@",responseObject);
          NSArray*arr=[responseObject valueForKeyPath:@"content.pop_events.events"];
          SecondScorllModel*model=[[SecondScorllModel alloc]initWithArr:arr];
          if (block) {
              block(model);
          }
      } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
          
      }];









}
+(void)getrecipes:(NSDictionary*)dic success:(void(^)(NSArray*arr))block{
    AFHTTPSessionManager*manager=[AFHTTPSessionManager manager];
        
    
    [manager POST:@"http://api.xiachufang.com/v2/recipes/lookup.json" parameters:dic progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
       // NSLog(@"%@",responseObject);
        NSArray*arr=[responseObject valueForKeyPath:@"content.recipes"];
        NSMutableArray*array=[NSMutableArray array];
        for (NSDictionary*dic in arr) {
            TableViewcellModel*model=[[TableViewcellModel alloc]initWithDic:dic];
            [array addObject:model];
        }
        if (block) {
            block(array);
        }
        
       } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
    }];





}
+(void)getPopularMenu:(NSDictionary*)dic :(void(^)(liuXingMenuModel*model))block{
    AFHTTPSessionManager*manager=[AFHTTPSessionManager manager];
 //NSDictionary*dic=@{@"recipe_list_id":@"164363",@"api_sign":@"341c38f23af9e62d5bcb43e360965b7b",@"api_key":@"0d4ba9a3291bf5d8352ea68ca46fd760",@"origin":@"ipad",@"version":@"8"};
    [manager POST:@"http://api.xiachufang.com/v2/recipe_lists/lookup_v2.json" parameters:dic progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
      //  NSLog(@"##############     %@",responseObject);
         
       // NSArray*arr= responseObject[@"content"][0][@"first_recipe"][@"ingredient"];
        liuXingMenuModel*model=[[liuXingMenuModel alloc]initWithDic:responseObject];
        if (block) {
            block(model);
            
        }
        
        
            } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
    }];



}
+(void)getCategoreites:(void(^)(Categegories*model))block{
    AFHTTPSessionManager*manager=[AFHTTPSessionManager manager];
    [manager GET:@"http://api.xiachufang.com/v2/categories/tree.json?api_key=0d4ba9a3291bf5d8352ea68ca46fd760&api_sign=c3b4d7a87f4a79d52edbd4652648f6e0&origin=ipad&version=8" parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        Categegories*model=[[Categegories alloc]initWithDic:responseObject];
        if (block) {
            block(model);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
    }];





}
@end
