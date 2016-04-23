//
//  FenLeiTableView.m
//  XiaChuFang
//
//  Created by Mac on 16/4/11.
//  Copyright © 2016年 LiuKeZhi. All rights reserved.
//

#import "FenLeiTableView.h"
#import "SingClass.h"
#import "Categegories.h"
#import "CustomDetailView.h"
@implementation FenLeiTableView
-(id)initWithFrame:(CGRect)frame{
    self=[super initWithFrame:frame];
    if (self) {
       // self.obj =[[SingClass shareSingClass] categoreModel];
        SingClass *single=[SingClass shareSingClass];
        self.obj=single.categoreModel;
//        NSLog(@"====%@",self.obj);
        
        [self createTable];
    }
    


    return self;
}
-(void)createTable{
 UITableView*table=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height) style:UITableViewStylePlain];
    table.delegate=self;
    table.dataSource=self;
    table.layer.cornerRadius=10;
    table.layer.borderWidth=2;
    table.layer.borderColor=[[UIColor grayColor]CGColor];
  //  table.separatorStyle=UITableViewCellSeparatorStyleNone;
    [self addSubview:table];
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.obj.arr.count;
   // NSLog(@"============%ld",self.obj.arr.count);
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell*cell=[tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.textLabel.text=self.obj.arr[indexPath.row];
    cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
    NSLog(@"%@",self.obj.arr[0]);

    return cell;
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UILabel       *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 400, 40)];
    label.text = @"全部分类";
    label.backgroundColor=[UIColor grayColor];
    label.textAlignment = NSTextAlignmentCenter;
    
    return label;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 40;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    CustomDetailView*detailView = [[CustomDetailView alloc]initWithFrame:CGRectMake(90, 80, 200, 400) withCate:self.obj.arr[indexPath.row]];
    [self addSubview:detailView];
    




}
@end
